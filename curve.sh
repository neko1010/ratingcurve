for file in $@
	do 
		echo $file
		grep ^USGS $file | cut -f 4,9,10 | sort -rnk4 > ${file/%.txt/_out.txt} 
#https://www.biostars.org/p/148345://www.biostars.org/p/148345/
		echo
	done
	
# Unsure why, but sort -rnk3 sorts by the second key/column and 4 the third
# Removed head, sent output to file

# Jeremiah Lant
# maybe something like the following which sorts the 3rd column first and then sorts by the
# 4th column:
#   grep ^USGS $file | cut -f 4,9,10 | sort -nr -k3,3 -k4,4 | head

