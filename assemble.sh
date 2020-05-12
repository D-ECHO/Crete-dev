for i in work-final/*
do
	if [ `echo $i | cut -c 12-99` != "AirportArea" -a `echo $i | cut -c 12-99` != "AirportObj" -a  `echo $i | cut -c 12-99` != "SRTM-1" ]
	then
		rm -r $i
	fi
done
cp -r work-corine/* work-final/
cp -r work-osm/* work-final
