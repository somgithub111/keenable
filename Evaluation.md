
<h2 align="center">AIM OF THE TASK</h2> 

-----
<p align="center"><b>To Create an Evaluation Report for all Interns on the Basis of Daily assigned Tasks.</b></p>

------
<h2 align="center">OBJECTIVE OF THE TASK</h2> 



<p align="center"><b>The Objective of the Evaluation_Report for all interns should include below points:-</b></p>

 1. Input the Evaluated data on the basis of Perfomance analysis factors like _Punctuality, Time management, Attendance, Communication, Requirement analysis, Self Learning, Grammatical error & Creativity._
 2. The Data should be in the form of remarks holding values for each i.e, _Poor=0, Fair=1, Satisfactory=2, Good=3, Very good=4, Excellent=5._ and average to be calculated using functions.
 3. Bonus Task:- To apply Formatting of cells in such a way that below average(_less than 2.5_) will appear as RED in colour for the same row.

----

<h2 align="center">TEST CASES</h2> 

|Test Cases|Attempt|Analysis|
|:----:|:-----:|:-----:|
|Test Case 1| Extra Rows for Numeric Values | Firstly i have tried to calculate the sum and Average by adding Extra rows for all numeric values using =Sum() and =Avg() function to generate the output.Although the result was successful but the sheet appears little unmannered.Further Shifted to next case. **Status= Not Aligned**|
|Test Case 2| Counting the (range, values)  | Entered function to select the range of the table and assigning values to text such that it will count the associated respective number defined as per Evaluation Criteria. The outcome failed as it's only counting the First value. **Status= Innapropriate Output**| 
|Test Case 3| Using Special Functions       | Issue Encountered at Test case 2 is resolved using array to store variable. **Status= Success** |

------

<h2 align="center">IMPLEMENTATION RULES USED </h2> 


<p align="center"> <a href="https://exceljet.net/excel-functions/excel-sum-function"><img align="center" alt="GitHub" src="https://img.shields.io/badge/=Sum()%20-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a></p>
<p align="center"> <a href="https://exceljet.net/excel-functions/excel-counta-function"><img align="center" alt="GitHub" src="https://img.shields.io/badge/CountA(range)%20-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a></p>
<p align="center"> <a href="https://www.ablebits.com/office-addins-blog/2015/02/25/array-formulas-functions-excel/"><img align="center" alt="GitHub" src="https://img.shields.io/badge/Array_Functions%20-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a></p>
<p align="center"> <a href="https://exceljet.net/excel-functions/excel-countif-function"><img align="center" alt="GitHub" src="https://img.shields.io/badge/Countif(range,values)%20-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a></p>

------

<h2 align="center">EXPLANATION OF IMPLEMENTATION</h2> 
<details close="close">
   <summary><b>Functionality in the Drop Down:-</b></summary>
<ul><br/>

 1. COUNTIF(range, value) Function with wildcard Character(*) is used to store values of assumed variables starting from Excellent=5.....upto Poor=0. Functions used on the First cell of average i.e, K4
  
  <b>
  
```sh
  COUNTIF(C4:J4,{"Excellent","Very good","Good","Satisfactory","Fair","Poor"})*{5,4,3,2,1,0})
  ```
  </b> <br/>
  
2. =SUM(values) function is used to Further count the Encounters of COUNTIF function to generate summation output

<b>
  
 ```sh
 (SUM(COUNTIF(C4:J4,{"Excellent","Very good","Good","Satisfactory","Fair","Poor"})*{5,4,3,2,1,0}))
  ```
  
  </b><br/>
  
3. Summation is further divided with COUNTA(range) which stores the count of cell in the selected range. This Formula is applied to generate the average.The output of COUNTA for the selected range in my assignment is 8 </b>

 <b> 
  
   ```sh
 (SUM(COUNTIF(Range, values)/COUNTA(C4:J4)
  ```
</b><br/>

4. Array Function is used to store the numerica values into their respective variables seperately. This Function is generally applied using CTRL+SHIFT+ENTER to save and exit the Editor.

 <b>
  
   ```sh
=ArrayFormula(SUM(COUNTIF(C4:J4,{"Excellent","Very good","Good","Satisfactory","Fair","Poor"})*{5,4,3,2,1,0}))/COUNTA(C4:J4)
  ```
 </b><br/>
 
5. For Bonus Task,I have used Conditional Formatting by selecting the range A4:K24 and select custom function on K with $ to lock the column reference as mentioned below along with red colour option to colour the rows whose value is less than 2.5 in column K:

  <b>
  
```sh
 =$K4<2.5      
  ```
</b></ul>
</details>

 -----
 
 <h2 align="center">TEST RESULTS</h2> 
 
 The Test Results were successful as output for any change in live Entry of any cell will further calculate the correct output and Conditional formatting for displaying the row with RED colour is also working with real time.
 
 ----
 
 
 <h2 align="center">CONCLUSION</h2> 

 I have researched on google to Explore different Ideas, functions and Formulas through which i have gained the calculated Idea to complete this task.I have also observed multiple methods of other Interns assigned with this task and observed the other possible ways through which this task has been completed.
 
 ----
 <br/>
 <br/>
 <b>Link of the Spreadsheet:</b> 
 <p align="left"><a href="https://docs.google.com/spreadsheets/d/1Meany3O0o46ljwN4PBSlDvy0NW9g95EqivOz28xYg9Q/edit?ts=6075dc15#gid=0"> <img src="https://www.picgifs.com/graphics/c/click-here/graphics-click-here-851444.gif" border="0" /></a> <a href="https://github.com/somgithub111/keenable/blob/main/MyPassion.md"><My Passion and Hobby/></a></p>

Feel Free to Drop any Suggestions/Upgradations regarding this markdown on below mail-
<p align="center">
  <a href="mailto:someshkmr4@gmail.com"><img src="https://img.icons8.com/color/96/000000/gmail.png" alt="email"/></a>

 
 
 
 
 
 
