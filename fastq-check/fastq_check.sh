dir=/media/backup/RAW_data/abc/bca # Raw file path
cd $dir
ls *.fastq > files
fname=`cat files` # files a file containf all fastqfile names with line break
mkdir stats
for x in $fname
do
comm="fastx_quality_stats -i "$dir/$x" -o ./stats/"$x.stats
echo $comm >> allcom
done
wait #waiting for the commands
parallel --verbose :::: allcom
wait # waiting for parallel to end
cd stats/
# generating all the boxplots
ls *.stats | parallel --verbose fastq_quality_boxplot_graph.sh -i {} -o {.}.png -t {.}
wait
rm -r *.stats
