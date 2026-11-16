exiftool -d %s -tagsfromfile "<insertJSON>" \
"-GPSAltitude<GeoDataAltitude" \
"-GPSLatitude<GeoDataLatitude" \
"-GPSLatitudeRef<GeoDataLatitude" \
"-GPSLongitude<GeoDataLongitude" \
"-GPSLongitudeRef<GeoDataLongitude" \
"-DateTimeOriginal<PhotoTakenTimeTimestamp" \
"-FileModifyDate<PhotoTakenTimeTimestamp" \
-overwrite_original "<insertFILE>"
