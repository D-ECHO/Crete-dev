case $1 in
	1) geo='--min-lon=23.0 --max-lon=26.5 --min-lat=34.5 --max-lat=36.0';;
	2) geo='--min-lon=24.5 --max-lon=25.0 --min-lat=35.0 --max-lat=35.1';;	#Test: LG54
	3) geo='--min-lon=25.1 --max-lon=25.3 --min-lat=35.3 --max-lat=35.4';;	#Test: LGIR
	4) geo='--min-lon=25.0 --max-lon=25.5 --min-lat=35.0 --max-lat=35.25';;	#Test: LGTL
	5) geo='--min-lon=23.7 --max-lon=24 --min-lat=35.5 --max-lat=35.6';;	#Test: LG03
esac
echo $1
echo $geo
if [ ! -z "$2" ]  && [ $2 = "light" ]
then
	echo "Light built: Not building Asphalt, Railroad, Strem";
	arg="";
else
	arg="Asphalt Railroad Stream";
fi
tg-construct --work-dir=./work-final --output-dir=./output/Terrain `echo $geo` --threads=3 --priorities=default_priorities.txt AirportArea SRTM-1 AirportObj Default Ocean Hole Freeway Road Road-Motorway Road-Trunk Road-Residential Road-Primary Road-Secondary Road-Tertiary Road-Service Road-Pedestrian Road-Steps Road-Unclassified Airport Pond Lake DryLake Reservoir IntermittentLake IntermittentStream Watercourse Canal Cliffs Glacier PackIce PolarIce Ocean Estuary Urban SubUrban Town Fishing Construction Industrial Port Dump FloodLand Lagoon Bog Marsh SaltMarsh Sand Saline Littoral Dirt Rock Lava OpenMining BuiltUpCover Transport Cemetery DryCrop IrrCrop Rice MixedCrop Vineyard Bamboo Mangrove ComplexCrop NaturalCrop CropGrass CropWood AgroForest Olives GolfCourse Greenspace GrassCover Grassland ScrubCover Scrub ShrubGrassCover SavannaCover Orchard DeciduousForest DeciduousBroadCover EvergreenForest EvergreenBroadCover MixedForest RainForest BarrenCover HerbTundra Sclerophyllous Heath Burnt SnowCover Island Default Void Null Unknown River $arg
