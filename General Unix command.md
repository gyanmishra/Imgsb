#General Unix command

## Using the GNU parallel command
Install GNU parallel (https://www.gnu.org/software/parallel/)
Run command on more than on file having some common patern in file name.

`parallel 'command {} >{}.ext' ::: *.ext`

e.g 
rename tmp1.txt,tmp2.txt,tmp3.txt to tmp1.csv,tmp2.csv,tmp3.csv respectively.

`parallel 'mv {} >{.}.csv' ::: *.txt`


##Rearrange coulumn of tab delimited files

`awk -F'\t'  '{ print $2, $3, $4, $1, $5}' file1.txt >output.txt`




