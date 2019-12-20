CREATE​ ​TABLE​ ​hospital
( ​ ​​ ​hospital_id​ ​NUMBER​ ​NOT​ ​NULL,
​ ​​ ​name​ ​VARCHAR2(25),
​ ​​ ​PRIMARY​ ​KEY​ ​(hospital_id)
);
CREATE​ ​TABLE​ ​campus
( ​ ​​ ​campus_id​ ​NUMBER​ ​NOT​ ​NULL,
s​ ​​ ​address​ ​VARCHAR2(25),
​ ​​ ​PRIMARY​ ​KEY​ ​(campus_id)
);
CREATE​ ​TABLE​ ​based_in
( ​ ​​ ​hospital_id​ ​NUMBER​ ​REFERENCES​ ​hospital(hospital_id),
​ ​​ ​campus_id​ ​NUMBER​ ​REFERENCES​ ​campus(campus_id),
​ ​​ ​PRIMARY​ ​KEY​ ​(hospital_id,​ ​campus_id)
);
CREATE​ ​TABLE​ ​staff
( ​ ​​ ​staff_id​ ​NUMBER​ ​NOT​ ​NULL,
​ ​​ ​profession​ ​VARCHAR2(30),
​ ​​ ​name​ ​VARCHAR2(30),
​ ​​ ​phone_number​ ​VARCHAR2(20),
​ ​​ ​PRIMARY​ ​KEY(staff_id)
);
CREATE​ ​TABLE​ ​employes
( ​ ​​ ​staff_id​ ​NUMBER​ ​REFERENCES​ ​staff(staff_id),
​ ​​ ​campus_id​ ​NUMBER​ ​REFERENCES​ ​campus(campus_id),
​ ​​ ​PRIMARY​ ​KEY​ ​(staff_id,​ ​campus_id)
);
CREATE​ ​TABLE​ ​patient
( ​ ​​ ​patient_id​ ​NUMBER​ ​NOT​ ​NULL,
​ ​​ ​name​ ​VARCHAR2(30),
​ ​​ ​dob​ ​DATE,
​ ​​ ​gender​ ​VARCHAR2(10),
​ ​​ ​phone_number​ ​VARCHAR2(20),
​ ​​ ​PRIMARY​ ​KEY(patient_id)
);
CREATE​ ​TABLE​ ​episode_of_care
( ​ ​​ ​encounter_id​ ​NUMBER​ ​NOT​ ​NULL,
​ ​​ ​diagnosis​ ​VARCHAR2(64),
​ ​​ ​admit_date​ ​DATE,
​ ​​ ​PRIMARY​ ​KEY(encounter_id)
);
CREATE​ ​TABLE​ ​instance_of
( ​ ​​ ​encounter_id​ ​NUMBER​ ​REFERENCES​ ​episode_of_care(encounter_id),
​ ​​ ​patient_id​ ​NUMBER​ ​REFERENCES​ ​patient(patient_id),
​ ​​ ​PRIMARY​ ​KEY​ ​(encounter_id,​ ​patient_id)
);
CREATE​ ​TABLE​ ​treats
( ​ ​​ ​staff_id​ ​NUMBER​ ​REFERENCES​ ​staff(staff_id),
​ ​​ ​encounter_id​ ​NUMBER​ ​REFERENCES​ ​episode_of_care(encounter_id),
​ ​​ ​PRIMARY​ ​KEY(staff_id,​ ​encounter_id)
);
CREATE​ ​TABLE​ ​prescription
( ​ ​​ ​prescription_id​ ​NUMBER​ ​NOT​ ​NULL,
​ ​​ ​drug_name​ ​VARCHAR(25),
​ ​​ ​prescription_date​ ​DATE,
​ ​​ ​dosage​ ​VARCHAR(20),
​ ​​ ​PRIMARY​ ​KEY(prescription_id)
);
CREATE​ ​TABLE​ ​prescribes
( ​ ​​ ​prescription_id​ ​NUMBER​ ​REFERENCES​ ​prescription(prescription_id),
​ ​​ ​staff_id​ ​NUMBER​ ​REFERENCES​ ​staff(staff_id),
​ ​​ ​encounter_id​ ​NUMBER​ ​REFERENCES​ ​episode_of_care(encounter_id),
​ ​​ ​PRIMARY​ ​KEY(prescription_id,​ ​staff_id,​ ​encounter_id)
);
CREATE​ ​TABLE​ ​appointment
( ​ ​​ ​appointment_id​ ​NUMBER​ ​NOT​ ​NULL,
​ ​​ ​appointment_date​ ​DATE,
​ ​​ ​appointment_name​ ​VARCHAR(25),
​ ​​ ​PRIMARY​ ​KEY(appointment_id)
);
CREATE​ ​TABLE​ ​attend
( ​ ​​ ​staff_id​ ​NUMBER​ ​REFERENCES​ ​staff(staff_id),
​ ​​ ​appointment_id​ ​NUMBER​ ​REFERENCES​ ​appointment(appointment_id),
​ ​​ ​PRIMARY​ ​KEY(staff_id,​ ​appointment_id)
);
CREATE​ ​TABLE​ ​subject_of
( ​ ​​ ​encounter_id​ ​NUMBER​ ​REFERENCES​ ​episode_of_care(encounter_id),
​ ​​ ​appointment_id​ ​NUMBER​ ​REFERENCES​ ​appointment(appointment_id),
​ ​​ ​PRIMARY​ ​KEY(encounter_id,​ ​appointment_id)
);
CREATE​ ​TABLE​ ​room
( ​ ​​ ​room_id​ ​NUMBER​ ​NOT​ ​NULL,
​ ​​ ​room_label​ ​VARCHAR2(20),
​ ​​ ​PRIMARY​ ​KEY(room_id)
);
CREATE​ ​TABLE​ ​takes_place_in
( ​ ​​ ​appointment_id​ ​NUMBER​ ​REFERENCES​ ​appointment(appointment_id),
​ ​​ ​room_id​ ​NUMBER​ ​REFERENCES​ ​room(room_id),
​ ​​ ​PRIMARY​ ​KEY(appointment_id,​ ​room_id)
);