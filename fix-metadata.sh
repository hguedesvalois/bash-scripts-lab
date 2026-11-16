#!/bin/bash
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'

echo "Iniciando mesclagem final de metadados..."
echo "------------------------------------------"

total_files=$(find . -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.heic" -o -iname "*.png" -o -iname "*.mp4" \) | wc -l)
current=0

find . -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.heic" -o -iname "*.png" -o -iname "*.mp4" \) | while read -r file; do
    ((current++))
    dir=$(dirname "$file")
    filename=$(basename "$file")
    # Remove a extensão para buscar o JSON pelo nome base (ex: IMG_0348)
    base_name="${filename%.*}"
    
    # Busca qualquer JSON que comece com o nome base da foto na mesma pasta
    # Isso ignora se a foto é .jpg ou .heic e foca no ID da imagem
    json_file=$(find "$dir" -maxdepth 1 -name "${base_name}*.json" | head -n 1)

    if [ -n "$json_file" ] && [ -f "$json_file" ]; then
        echo -e "[${current}/${total_files}] ${GREEN}OK:${NC} $filename"
        
        exiftool -q -overwrite_original -d %s -tagsfromfile "$json_file" \
        "-GPSAltitude<GeoDataAltitude" "-GPSLatitude<GeoDataLatitude" \
        "-GPSLatitudeRef<GeoDataLatitude" "-GPSLongitude<GeoDataLongitude" \
        "-GPSLongitudeRef<GeoDataLongitude" \
        "-DateTimeOriginal<PhotoTakenTimeTimestamp" \
        "-FileModifyDate<PhotoTakenTimeTimestamp" \
        "$file"
    else
        echo -e "[${current}/${total_files}] ${YELLOW}AVISO:${NC} Sem JSON para $filename"
    fi
done

echo "------------------------------------------"
echo "Processo finalizado! Agora você pode importar para o Immich."

