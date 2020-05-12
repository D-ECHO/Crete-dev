ogr-decode --max-segment 500 --line-width 12 --area-type Asphalt work-osm/Asphalt data/shapefiles/osm_motorway/
ogr-decode --max-segment 500 --line-width 10 --area-type Asphalt work-osm/Asphalt data/shapefiles/osm_trunk/
ogr-decode --max-segment 500 --line-width 8 --area-type Asphalt work-osm/Asphalt data/shapefiles/osm_primary/
ogr-decode --max-segment 500 --line-width 6.5 --area-type Asphalt work-osm/Asphalt data/shapefiles/osm_secondary/
ogr-decode --max-segment 500 --line-width 5 --area-type Asphalt work-osm/Asphalt data/shapefiles/osm_tertiary/
ogr-decode --max-segment 500 --line-width 3 --area-type Stream work-osm/Stream data/shapefiles/osm_stream/
ogr-decode --max-segment 500 --line-width 8 --area-type Stream work-osm/Stream data/shapefiles/osm_river/
ogr-decode --max-segment 500 --line-width 6 --area-type Railroad work-osm/Railroad data/shapefiles/osm_railway/

ogr-decode --max-segment 500 --area-type Port work-osm/Port data/shapefiles/osm_pier
ogr-decode --max-segment 500 --area-type Industrial work-osm/Industrial data/shapefiles/osm_industrial/
ogr-decode --max-segment 500 --area-type Commercial work-osm/Commercial data/shapefiles/osm_commercial/
ogr-decode --max-segment 500 --area-type Construction work-osm/Construction data/shapefiles/osm_construction/
#ogr-decode --max-segment 500 --area-type Sand work-osm/Sand data/shapefiles/osm_sand/
ogr-decode --max-segment 500 --area-type Lake work-osm/Lake data/shapefiles/osm_lake/
ogr-decode --max-segment 500 --area-type SubUrban work-osm/SubUrban data/shapefiles/osm_town/ #SubUrban, to not interfere with CORINE
ogr-decode --max-segment 500 --area-type MixedForest work-osm/MixedForest data/shapefiles/osm_forest/
ogr-decode --max-segment 500 --area-type GrassCover work-osm/GrassCover data/shapefiles/osm_meadow/
ogr-decode --max-segment 500 --area-type GolfCourse work-osm/GolfCourse data/shapefiles/osm_golfcourse/
ogr-decode --max-segment 500 --area-type Scrub work-osm/Scrub data/shapefiles/osm_scrub/
ogr-decode --max-segment 500 --area-type Heath work-osm/Heath data/shapefiles/osm_heath/
ogr-decode --max-segment 500 --area-type Rock work-osm/Rock data/shapefiles/osm_rock/
ogr-decode --max-segment 500 --area-type Dump work-osm/Dump data/shapefiles/osm_dump/
ogr-decode --max-segment 500 --area-type Grassland work-osm/Grassland data/shapefiles/osm_grassland/
ogr-decode --max-segment 500 --area-type Lava work-osm/Lava data/shapefiles/osm_lava/
ogr-decode --max-segment 500 --area-type Grass work-osm/Grass data/shapefiles/osm_airport/ #Grass, to not interfere with CORINE
ogr-decode --max-segment 500 --area-type Default work-osm/Default data/shapefiles/osm_landmass/
