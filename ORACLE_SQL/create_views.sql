CREATE​ ​VIEW​ ​appt_rooms​ ​AS
​ ​​ ​(SELECT​ ​appointment.appointment_name,​ ​appointment.appointment_date,​ ​room.room_label
​ ​​ ​FROM​ ​appointment,​ ​room
​ ​​ ​WHERE​ ​appointment.room_id​ ​=​ ​room.room_id);

CREATE​ ​VIEW​ ​staff_campus​ ​AS
​ ​​ ​(SELECT​ ​staff.name,​ ​staff.profession,​ ​campus.address
​ ​​ ​FROM​ ​staff,​ ​campus
​ ​​ ​WHERE​ ​staff.campus_id​ ​=​ ​campus.campus_id);