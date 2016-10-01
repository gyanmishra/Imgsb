##RNASeq TUXEDO Pipeline for RHEL 7+

RNA-Seq_tuxedo pipeline is a python based complete RNASeq data analysis script by

@akok619 https://github.com/akok619/RNA-Seq_tuxedo

Based on http://www.nature.com/nprot/journal/v7/n3/abs/nprot.2012.016.html

###Dependencies:
* [Python 2.7.10](https://www.python.org/downloads/release/python-2710/)

* [Bowtie2 2.2.5](http://bowtie-bio.sourceforge.net/bowtie2/index.shtml)

* [Tophat 2.1.0](https://ccb.jhu.edu/software/tophat/)

* [Cufflinks 2.2.1](http://cole-trapnell-lab.github.io/cufflinks/)

* Cuffmerge 1.0.0 (")

* Cuffdiff 2.2.1 (")

##Solving the Python version issue

By default the installed Python version in RHEL 7 is 2.7 but if you have updated to higher versions 3.5/3.6, the script may not function properly.
To over come this issue you can install another version of Python without breaking or downgrading the updated one. Use the following tutorial.

Download [Python 2.7.10](https://www.python.org/downloads/release/python-2710/)
`$ wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tar.xz`

`$ tar xf Python-2.7.*`

`$ cd Python-2.7.*`

`$ ./configure`

`$ make`

`$ make altinstall`

Now open `.bashrc` file and define the location of the `bin`.

`export PATH="{path to pyhton directory}/Python2.7:$PATH" `

`$ source .bashrc`

`$ python2.7 runtuxedosuite.py`

Get [runtuxedosuite.py](https://github.com/arupgsh/RNA-Seq_tuxedo)
