mkdir work-corine
mkdir work-osm
for i in output/Terrain/*; do
	for k in $i/*; do
		for m in ../CORINE/work/*; do
			mkdir work-corine/`echo $m | cut -d / -f 4`
			mkdir work-corine/`echo $m | cut -d / -f 4`/`echo $i | cut -d / -f 3`
			mkdir work-corine/`echo $m | cut -d / -f 4`/`echo $i | cut -d / -f 3`/`echo $k | cut -d / -f 4`
			cp -r $m/`echo $i | cut -d / -f 3`/`echo $k | cut -d / -f 4`/* work-corine/`echo $m | cut -d / -f 4`/`echo $i | cut -d / -f 3`/`echo $k | cut -d / -f 4`/
		done;
	done;
done

