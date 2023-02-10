use alumni;
#College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ
#Run SQL command to see the structure of six tables
#Higher Studies, Self Employed and Service/Job
select * from College_B_SE;
select * from College_A_HS;
select * from College_A_SE;
select * from College_A_SJ;
select * from College_B_HS;
select * from College_B_SJ;

#
SELECT  
    COALESCE(SUM( College_A_HS.PresentStatus), 0)  as  PresentStatus,
      Batch,Rollno,LastUpdate,Name
FROM  College_A_HS
WHERE  College_A_HS.PresentStatus
    IN ('self Employed')
GROUP BY Batch
ORDER BY Batch;
 #
SELECT  
    COALESCE(SUM( College_A_HS.Rollno), 0)  as  PresentStatus,
      Batch,Rollno,LastUpdate,Name
FROM College_A_HS
WHERE College_A_HS.Rollno
    IN (1611982121,1711982079)
GROUP BY Batch
ORDER BY Batch;
#
SELECT  
    COALESCE(SUM( College_A_SE.Rollno), 0)  as  PresentStatus,
      Batch,Rollno,LastUpdate,Name
FROM College_A_SE
WHERE College_A_SE.Rollno
    IN (1611982121,1711982079)
GROUP BY Batch
ORDER BY Batch;
#
SELECT  
    COALESCE(SUM( College_A_SJ.Rollno), 0)  as  PresentStatus,
      Batch,Rollno,LastUpdate,Name
FROM College_A_SJ
WHERE College_A_SJ.Rollno
    IN (1611982121,1711982079)
GROUP BY Batch
ORDER BY Batch;
#
SELECT  
    COALESCE(SUM( College_B_HS.Rollno), 0)  as  PresentStatus,
      Batch,Rollno,LastUpdate,Name
FROM College_B_HS
WHERE College_B_HS.Rollno
    IN (1611982121,1711982079)
GROUP BY Batch
ORDER BY Batch;
#
SELECT  
    COALESCE(SUM( College_B_SJ.Rollno), 0)  as  PresentStatus,
      Batch,Rollno,LastUpdate,Name
FROM College_B_SJ
WHERE College_B_SJ.Rollno
    IN (1611982121,1711982079)
GROUP BY Batch
ORDER BY Batch;
#
#College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ
select lcase(Name) NAME ,lcase(FatherName) FATHERNAME,lcase(MotherName) MOTHERNMAE from College_B_SJ;
select lcase(Name) NAME ,lcase(FatherName) FATHERNAME,lcase(MotherName) MOTHERNMAE from College_A_SJ;
select lcase(Name) NAME ,lcase(FatherName) FATHERNAME,lcase(MotherName) MOTHERNMAE from College_B_SE;
select lcase(Name) NAME ,lcase(FatherName) FATHERNAME,lcase(MotherName) MOTHERNMAE from  College_B_HS;
select lcase(Name) NAME ,lcase(FatherName) FATHERNAME,lcase(MotherName) MOTHERNMAE from College_A_SE;
select lcase(Name) NAME ,lcase(FatherName) FATHERNAME,lcase(MotherName) MOTHERNMAE from College_A_HS;
#
call collegeA();
call collegeB();

call college_B('Higher Studies',@test );
select @test ;