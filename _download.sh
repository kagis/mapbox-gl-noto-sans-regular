seq 0 255 | \
awk '{ print $1 * 256 "-" $1 * 256 + 255 }' | \
awk '{ print "wget \"https://tile.kagis.kz/openmaptiles/fonts/Metropolis+Regular,Klokantech+Noto+Sans+Regular,Klokantech+Noto+Sans+CJK+Regular/" $0 ".pbf?key=egrA25FNSYcFuvl6Lb8Y\" -O " $0 ".pbf" }' | \
sh
