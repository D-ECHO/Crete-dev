mkdir osm_motorway osm_trunk osm_primary osm_secondary osm_tertiary osm_stream osm_river osm_railway osm_industrial osm_town osm_forest osm_golfcourse osm_commercial osm_sand osm_construction osm_lake osm_meadow osm_scrub osm_landmass osm_dump osm_grassland osm_lava osm_rock osm_airport osm_heath
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_motorway/osm_motorway_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_trunk/osm_trunk_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_motorwaylink_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_trunklink_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_primary_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primarylink' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_primary_link_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_secondary_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_secondarylink_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'tertiary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_tertiary_oh.shp crete_lines.shp


ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'stream'" osm_stream/osm_stream_oh.shp crete_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'river'" osm_river/osm_river_oh.shp crete_lines.shp

ogr2ogr -f "ESRI Shapefile"  -where "other_tags LIKE '%railway%'" osm_railway/osm_railway_oh.shp crete_lines.shp

ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'industrial'" osm_industrial/osm_industrial_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'commercial'" osm_commercial/osm_commercial_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'residential'" osm_town/osm_town_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'forest'" osm_forest/osm_forest_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'wood'" osm_forest/osm_forest_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'golf_course'" osm_golfcourse/osm_golfcourse_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'beach'" osm_sand/osm_beach_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'construction'" osm_construction/osm_costruction_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'water'" osm_lake/osm_lake_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'meadow' OR landuse = 'grass'" osm_meadow/osm_meadow_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'landfill'" osm_dump/osm_landfill_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'heath'" osm_heath/osm_heath_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'scrub'" osm_scrub/osm_scrub_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'bare_rock'" osm_rock/osm_barerock_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'grassland'" osm_grassland/osm_grassland_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'lava'" osm_lava/osm_lava_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "aeroway = 'aerodrome'" osm_airport/osm_airport_oh.shp crete_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'coastline' OR place = 'island' OR place = 'islet'" osm_landmass/osm_landmass_oh.shp crete_polygons.shp
