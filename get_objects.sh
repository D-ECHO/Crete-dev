for i in output/Terrain/*; do
	for k in $i/*; do
		#mkdir output/Objects/$i
		#mkdir output/Objects/$i/$k
		rel_dir=`echo $k | cut -c 16-55`
		mkdir output/Objects/$rel_dir
		cp -r /home/delta/.fgfs/TerraSync/Objects/$rel_dir/* output/Objects/$rel_dir
	done;
done

