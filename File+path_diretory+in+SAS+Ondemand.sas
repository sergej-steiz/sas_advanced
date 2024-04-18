/*Moving from SAS University edition to SAS Ondemand for academics:
Only thing need to be updated for the SAS programs is to: 

Change home folder directory from
/folders/myfolders/ 
to 
/home/c.sharonx/   (right click on Files(Home) --> Properties)

In this video, I include SAS codes specifying file/folder path included in my courses,
also include situation with sub-folder created under the home folder 
(THIS LECTURE is just for chaging file/folder directory in SAS ondemand, 
you don't have to understand the sample codes which will be explained step by 
step in the realted lectures later.)

/folders/myfolders/sub-folder
 change to
/home/c.sharonx/sub-folder
---- in this situation, you will need to to create the sub folder 
under Files(Home) if the sub-folder is not created yet. 
The names of the created folders are case sensitive.



--------------------------------------------------------------------*/

/*Example 1: INFILE statement*/

data sdata_blanks;
*infile "/folders/myfolders/DATA_blanks.txt";
infile "/home/c.sharonx/data/DATA_blanks.txt";
input name $ Gender $ Age Weight;
run;

/*Example 2: Proc Import
proc import datafile = "/folders/myfolders/score1_1.xlsx" 
DBMS = xlsx out = scoredata0 replace ;
run; 
*/

proc import datafile = "/home/c.sharonx/score1_1.xlsx" 
DBMS = xlsx out = scoredata0 replace ;
run; 

/* Example 3: LIBNAME 
LIBNAME score "/folders/myfolders";*/
LIBNAME score "/home/c.sharonx";

/*Example 4: Libname
formats folder is a sub-folder under Home folder

libname myfmts "/folders/myfolders/formats" ; */


LIBNAME myfmts "/home/c.sharonx/formats"; /*Don't forget creating a folder named formats first under Files(Home)*/




    