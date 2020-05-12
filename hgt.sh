alias hgtchop=/home/delta/Programme/flightgear/new_fgmeta/install/terragear/bin/hgtchop
alias terrafit=/home/delta/Programme/flightgear/new_fgmeta/install/terragear/bin/terrafit
if [ -z $1 ]
then
	for f in ${PWD}/data/SRTM-1/*.hgt; do hgtchop 1 "${f}" "${PWD}/work-final/SRTM-1"; done
	terrafit work-final/SRTM-1 --threads 4  -e 1 -x 25000
else
	for f in ${PWD}/data/SRTM-1/$i/*.hgt; do hgtchop 1 "${f}" "${PWD}/work-final/SRTM-1"; done
	terrafit work-final/SRTM-1 --threads 4  -e 1 -x 25000
fi
