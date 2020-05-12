rm -r work-final/AirportArea work-final/AirportObj
for i in data/airports/*.dat; do genapts850 --threads --input=$i --work=./work-final --dem-path=SRTM-1; done
