--campuses per hospital
SELECT​ ​hospital.name,​ ​campus.address 
​ ​​ ​FROM​ ​hospital,campus
​ ​​ ​WHERE​ ​hospital.hospital_id=campus.hospital_id;

--number of staff per campus
SELECT​ ​campus.address,COUNT(staff.name)
​ ​​ ​​ ​​ ​FROM​ ​staff,campus
​ ​​ ​​ ​​ ​WHERE​ ​staff.CAMPUS_ID​ ​=​ ​campus.CAMPUS_ID
​ ​​ ​​ ​​ ​GROUP​ ​BY​ ​staff.campus_id,campus.address
​ ​​ ​​ ​​ ​ORDER​ ​BY​ ​COUNT(staff.name)​ ​DESC;

--perscriptions with the doctor that perscribed it
SELECT​ ​pre.drug_name,​ ​s.name​ ​AS​ ​staff_name,​ ​p.name​ ​AS​ ​patient_name
​ ​​ ​FROM​ ​prescribes​ ​prel,
​ ​​ ​​ ​​ ​​ ​​ ​staff​ ​s,
​ ​​ ​​ ​​ ​​ ​​ ​prescription​ ​pre,
​ ​​ ​​ ​​ ​​ ​​ ​episode_of_care​ ​e,
​ ​​ ​​ ​​ ​​ ​​ ​patient​ ​p
​ ​​ ​WHERE
​ ​​ ​​ ​​ ​​ ​​ ​prel.staff_id=s.STAFF_ID
​ ​​ ​​ ​​ ​​ ​​ ​AND​ ​prel.prescription_id=pre.prescription_id
​ ​​ ​​ ​​ ​​ ​​ ​AND​ ​prel.encounter_id=e.encounter_id
​ ​​ ​​ ​​ ​​ ​​ ​AND​ ​e.patient_id=p.patient_id;

--number of appointments per day per staff member
SELECT​ ​staff.name,​ ​appts.apt_date,​ ​appts.amount
​ ​​ ​​ ​​ ​FROM​ ​(
​ ​​ ​​ ​​ ​​ ​​ ​SELECT​ ​staff_id,​ ​appointment_date​ ​AS​ ​apt_date,​ ​COUNT(staff_id)
AS​ ​amount
​ ​​ ​​ ​​ ​​ ​​ ​FROM​ ​appointment​ ​GROUP​ ​BY​ ​staff_id,​ ​appointment_date
​ ​​ ​​ ​​ ​)​ ​appts,​ ​staff
​ ​​ ​​ ​​ ​WHERE​ ​appts.staff_id​ ​=​ ​staff.staff_id
​ ​​ ​​ ​​ ​ORDER​ ​BY​ ​appts.apt_date;

--all patients that have either an appointment or perscription
SELECT​ ​*​ ​FROM​ ​episode_of_care
​ ​​ ​​ ​​ ​WHERE​ ​encounter_id​ ​IN(SELECT​ ​encounter_id​ ​FROM​ ​appointment)
UNION
SELECT​ ​*​ ​FROM​ ​episode_of_care
​ ​​ ​​ ​​ ​WHERE​ ​encounter_id​ ​IN(SELECT​ ​encounter_id​ ​FROM​ ​prescribes);

--all patients from two seperate databases using full outer join
SELECT * FROM PATIENT aa FULL OUTER JOIN PATIENT@DATABASELINK2 bb ON (aa.PATIENT_ID = bb.PATIENT_ID);

--all patients from two seperate databases using left outer join
SELECT aa.PATIENT_ID, bb.PATIENT_ID, aa.GENDER, aa.DOB, aa.NAME, aa.PHONE_NUMBER FROM PATIENT aa
LEFT OUTER JOIN PATIENT@DATABASELINK2 bb ON (aa.PATIENT_ID = bb.PATIENT_ID);