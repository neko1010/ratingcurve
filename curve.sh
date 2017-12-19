for file in $@
	do 
		echo $file
		grep ^USGS $file | cut -f 4,9,10 | sort -rnk4 | head -5
		echo
	done
# Unsure why, but sort -rnk3 sorts by the second key/column and 4 the third
