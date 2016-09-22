#Some useful awk commands for Bioinformatics

##Comparing columns in two files and replacing the empty cells to "NA" in output

`awk 'FNR==NR{a[$1]++;next}a[$15]{if(!$8){$8="NA"}else if(!$9){$9="NA"}{print $15,"\t",$8,"\t",$9}}' file1.txt file2.txt > file3`

##Removing file headers/Commants and parsing specific column range (Peak Analysis)

`awk '!/#/ {for(i=1; i<6; i++) {printf("%s\t", $i)} print ""}' peaks.txt > Sorted_peak_file.bed`

Change the value of `i` and range according to your requirement

##Grep alternative of the above command

`grep -v "#" peaks.txt | cut -f 1,2,3,4,5> Sorted_peak_file.bed`

Adjust column numbers according to requirement

##Comparing multiple columns of two files

`awk 'FNR==NR{a[$1,$2,$3]++;next}a[$1,$2,$3]' Cpg_filtered.bed Cpgfull >CPG_normalt`
