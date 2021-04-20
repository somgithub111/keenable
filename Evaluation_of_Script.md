<h2 align="center">OBJECTIVE OF THE ASSIGNMENT</h2> 

 To make a Script to download the Previously created two Evaluation reports in CSV file through link and Extract the data to dispaly only below points from both:-  
 1. Name: _____
 2. Sum  : _______
 3. Average:______

----

<h2 align="center">TEST CASES</h2> 

|Test Cases|Test Case Description|Steps Performed| Test Status|Output
|:----:|:-----:|:-----:|:-----:|:-----:|
|Test Case 1| **WEB PUBLISHING** <br/> Publish the Spreadsheet's link to web with CSV output | A Copy of Spreadsheet's link has been published to web using *Publish to web* option from **File menu** of spreadsheet opting the CSV mode | PASS |![](https://raw.githubusercontent.com/somgithub111/test/master/Screenshot%20from%202021-04-19%2023-55-40.png) <br/> Client/Approver's Signature _______ |
|Test Case 2| **DECLARING PATHS IN VARIABLES** <br/> Path of the commands are stored in variables so that it can be called using $var_name when required| MKDIR=/usr/bin/mkdir <br/> RENAME=/usr/bin/mv <br/> ECHO=/usr/bin/echo <br/> SHOW=/usr/bin/cat <br/> DOWNLOAD=/usr/bin/wget <br/><br/> **Note: Do not use root user to operate**| PASS | ![](https://raw.githubusercontent.com/somgithub111/test/master/Screenshot%20from%202021-04-20%2009-19-11.png) <br/> Client/Approver's Signature _______ |
|Test Case 3| **DOWNLOAD THE LINK SILENTLY** <br/> _wget_ Command is a non-interactive network downloader| Using $wget to call _wget_ from stored path in variable and to download quietly we have used _$wget -q_ (now downloading process is quietly running as hidden mode) and $ECHO is used to display the confirmation of downloaded link.| PASS | ![](https://raw.githubusercontent.com/somgithub111/test/master/Screenshot%20from%202021-04-20%2010-00-26.png) <br/> Client/Approver's Signature _______ |
|Test Case 4| **RENAME CSV FILE AND STORE** <br/> Downloaded file via _Test case 3_ is now renamed to Evaluation_of_sheet1 and Evaluation_of_sheet2 stored directly to Evaluation_DIR created by the script to your operating location.| $RENAME is used to call the *mv* command from it's path and renaming and storing the output file to newly created directory.Output can be visible as shown in the image at the Right-End |PASS|![](https://raw.githubusercontent.com/somgithub111/test/master/Screenshot%20from%202021-04-20%2010-09-57.png) <br/> Client/Approver's Signature _______ |
|Test Case 5| **EXTRACTING THE DATA FROM CSV** <br/> We have used the _awk_ command to extract the data that we want to display| awk '{print" " "NAME   : "$2, "\n" , "SUM    : " $11*8, "\n", "AVERAGE: " $11, "\n","__________________"}' Evaluation_of_sheet1.csv <br/> where for Evaluation_of_Sheet1,<br/> Name: $2 is Extracing the second column <br/> Sum = $11*8 is Extracting the 11th column of Average and multiply each by 8 to get the Sum <br/> Average : $11 is Extracting the 11th column </br> \t is used to provide one tab horizontal space. <br/> "" is used to print value as it is.<br/> Output is messed up due to some issue in command|FAIL| ![](https://raw.githubusercontent.com/somgithub111/test/master/Screenshot%20from%202021-04-20%2010-57-51.png) <br/> Fixation Required|
|Test Case 6| **RESOLUTION OF TEST CASE:5 ISSUE** <br/> The issue occured in Test Case 5 has been resolved with certain changes in command.<br/> Although Script Passed to provide the desired output , but the only glitch is there it's counting the Whole region and unrelevant data is also visible as Output. | Now **\t** is replaced with **\n** to change the line of output. <br/> {FS=","} is the command used here as a File Separator with delimiter (,) as CSV stores the file as a comma separated values.|PASS with minor Glitch| ![](https://raw.githubusercontent.com/somgithub111/test/master/Screenshot%20from%202021-04-20%2011-15-59.png) <br/> Minor Fixation Required.|
|Test Case 7| **FIXATION OF OUTPUT** <br/> The Output issue of display from first columns are limited using NR command in awk. It limits the no. of region to display| Putting the NR in awk as shown below has fixed the issue: <br/> awk '{FS=","}**NR>=4 && NR<=26**{print...... <br/> It limits the region of output display between 4 to 26. The issue is Fixed now and the Output is Structured correctly. |PASS| ![](https://raw.githubusercontent.com/somgithub111/test/master/Screenshot%20from%202021-04-20%2011-32-19.png)<br/> Client/Approver's Signature _______ |
|Test Case 8| **STORING AND DISPLAY THE OUTPUT** <br/> The output file is used to store in the desired folder created by script and display the Output as well to the terminal. | Used Redirectional operator at the End of awk Extracted File to store its values to Output_  <br/>awk 'function' Evaluation_of_sheet1.csv > Output_of_sheet1.csv and following the same for sheet2 to store in same directory Evaluation_DIR<br/> Display output at terminal using $SHOW using cat command's path:<br/> $SHOW Output_of_sheet1.csv <br/> $SHOW Output_of_sheet2.csv. |PASS| ![](https://raw.githubusercontent.com/somgithub111/test/master/Screenshot%20from%202021-04-20%2011-57-32.png) Client/Approver's Signature _______ |

------

<h2 align="center">IMPLEMENTATION RULES USED </h2> 

 
<p align="center"> 1. wget -q (Non-interactive Downloader) <br/> 2. mv (Renaming and storing the output file) <br/> 3. Echo (used to print the text " ") <br/> 4. awk (Used to Extract values)</p>

------

<h2 align="center">EXPLANATION OF IMPLEMENTATION</h2> 
<details close="close">
   <summary><b>Functionality in the Drop Down:-</b></summary>
<ul><br/>
  <b>
    
 1. Path of the commands used in the script are stored in variables.Further these variables are called using $variablename:
  
  <b>
  
  ```sh
     MKDIR=/usr/bin/mkdir
     RENAME=/usr/bin/mv
     ECHO=/usr/bin/echo
     SHOW=/usr/bin/cat
     DOWNLOAD=/usr/bin/wget

  ```
  
  </b> <br/>
  
 2. New Directory Evaluation_DIR is made to the path where script is operating and move to the Directory location to store the further downloads and outputs:

  <b>
  
 ```sh
    $MKDIR Evaluation_DIR  #Creating a new Directory to store the downloaded and generated output files.
    cd Evaluation_DIR 
  ```
  
  </b><br/>
  
 3. Downloading the Spreadsheet file as CSV output and Renaming it to Evaluation_of_sheet1 or 2 respectively and storing the same with same filename to Desired directory:
  <b> 
 
 
 ```sh
    $DOWNLOAD -q 'https://docs.google.com/spreadsheets/d/e/2PACX-1vTrNldUZStbLCL-Q9Le9ilWrWxR1XW5N4zOzpBbM4aBEsgp2wheS7ioOx0yQ8a_zZuxvw4fXkwYH-Mh/pub?output=csv' 
    $RENAME pub?output=csv Evaluation_of_sheet1.csv 
    $DOWNLOAD -q 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRc3-RATBQ0U-XYPwb8uRHs0sMwJspqnspJxWFPXVz_pF0NA2QTFA-rkmPsRjMOlF_xPdpwBRjYOkhK/pub?output=csv' 
    $RENAME pub?output=csv Evaluation_of_sheet2.csv 
 ```
 
 
   </b><br/>

 4. Echo command is used here to display the text as it is where required:

 <b>
  
  ```sh
     $ECHO "links downloaded. Extracting now..."
     $ECHO "-------------------------------------------EVALUATION OF SHEET 1 (DAILY BASIS)-------------------------------------------------------"
     $ECHO "----------------------------------------EVALUATION OF SHEET 2 (ON THE BASIS OF MARKDOWN FILE)-----------------------------------------------"
  ```
  
 </b><br/>
 
 5. awk command is used to Extract the data where FS is used as Field seperator (,) and NR is used to select no. of regions in output between 4 to 24/26 and "" is used to Echo text as it is, \n is used to change the lines and  $2 ,$11, &11*8 is used to display column:

  <b>
  
  ```sh
     awk '{FS=","}NR>=4 && NR<=24{print" " "NAME   : "$2, "\n" , "SUM    : " $11*8, "\n", "AVERAGE: " $11, "\n","__________________"}' Evaluation_of_sheet1.csv >       Output_of_sheet1.csv 
     $SHOW Output_of_sheet1.csv
     awk '{FS=","}NR>=4 && NR<=26{print" " "NAME   : "$2, "\n" , "SUM    : " $11*8, "\n", "AVERAGE: " $11, "\n","__________________"}' Evaluation_of_sheet2.csv >   Output_of_sheet2.csv 
     $SHOW Output_of_sheet2.csv
  ```
</b></ul>
</details>

 ----
 
 
 <h2 align="center">CONCLUSION</h2> 

 The Script is Completed successfully and the outputs are generated in the correct manner.
 
 ----
 <br/>
 <br/>
 <b>Link of the Script:</b> 
 <p align="left"><a href="https://drive.google.com/drive/folders/19HB1MKjL_NrmajPQ-TXmCGRAr_WBNnfE?usp=sharing"> <img src="https://www.picgifs.com/graphics/c/click-here/graphics-click-here-851444.gif" border="0" /></a> 
 <br/>
 
 <b>Link of the sample Downloaded spreadsheet as CSV:</b> 
 <p align="left"><a href="https://drive.google.com/drive/folders/1K5h_bzdaPLTJH7ZF1d_czQZfMeu6Vxrs?usp=sharing"> <img src="https://www.picgifs.com/graphics/c/click-here/graphics-click-here-851444.gif" border="0" /></a> 
 
 <br/>
 <b>Link of the sample Output generated from CSV via script:</b> 
 <p align="left"><a href="https://drive.google.com/drive/folders/1cneXnyZOXIcY9-Cly51sDvFODH9y7uGE?usp=sharing"> <img src="https://www.picgifs.com/graphics/c/click-here/graphics-click-here-851444.gif" border="0" /></a>
 
 <br/>
Feel Free to Drop any Suggestions/Upgradations regarding this markdown on below mail-
<p align="center">
  <a href="mailto:someshkmr4@gmail.com"><img src="https://img.icons8.com/color/96/000000/gmail.png" alt="email"/></a>

 
 
 
 
  
