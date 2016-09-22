# Comparing columns in two files and replacing the empty cells to "NA" in output

`awk 'FNR==NR{a[$1]++;next}a[$15]{if(!$8){$8="NA"}else if(!$9){$9="NA"}{print $15,"\t",$8,"\t",$9}}' file1.txt file2.txt > file3`
