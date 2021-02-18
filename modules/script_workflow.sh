#!/bin/bash


echo "Script to perform differential gene expression analtsis on breast cancer data"
echo "Write the type of brast cancer to compare with LumA (Basal, TNBC):"
read INPUT
Rscript 1_getData.R
Rscript 2_subgettingData.Rscript 1_getData.R
Rscript 2_subgettingData.R

if test "$INPUT" = "Basal" 2>/dev/null
then
	Rscript 3_DEA.R basal
elif test "$INPUT" = "TNBC" 2>/dev/null
then 
	Rscript 3_DEA.R tnbc
else
	echo "ERROR: parameter mus be Basal or TNBC"
	exit 1
fi

echo "DEA finished"
