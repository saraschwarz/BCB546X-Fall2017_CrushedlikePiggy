#!/bin/bash
clear
module load plink
plink --ped DG_Boar.ped --map DG_Boar.map --recode --maf 0.005 --max-maf 0.03 --out Board.filtered.0.005
plink --ped DG_Boar.ped --map DG_Boar.map --recode --maf 0.05 --out Board.filtered.0.05

plink --ped DG_Pig.ped --map DG_Pig.map --recode --maf 0.05 --out Pig.filtered.0.05

###

### To copy:  scp finnp@hpc-class.its.iastate.edu:~/in_class/final_project/Pig.f* ~/Desktop/Final\ project/