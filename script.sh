#! /bin/bash

mkdir testdir
cd testdir

wget --no-check-certificate -q -o - 'https://docs.google.com/spreadsheets/d/e/2PACX-1vTrNldUZStbLCL-Q9Le9ilWrWxR1XW5N4zOzpBbM4aBEsgp2wheS7ioOx0yQ8a_zZuxvw4fXkwYH-Mh/pub?output=csv'

mv pub?output=csv Evaluation_of_sheet1.csv

wget --no-check-certificate -q -o - 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRc3-RATBQ0U-XYPwb8uRHs0sMwJspqnspJxWFPXVz_pF0NA2QTFA-rkmPsRjMOlF_xPdpwBRjYOkhK/pub?output=csv'


mv pub?output=csv Evaluation_of_sheet2.csv


awk '{print $1}' Evaluation_of_sheet1.csv


echo "---------------------------------------------------------------------------------------------------------------------------"


awk '{print $1}' Evaluation_of_sheet2.csv



