1-
SELECT t.tid, t.tname, COUNT(s.sid) as students
FROM teacher t, term_rec s
WHERE t.tid  =  s.tid
GROUP BY t.tid,t.tname  
HAVING COUNT(s.sid) > 3;       


2-
SELECT class.cname,COUNT(student.sid) as students
FROM TERM_REC JOIN class ON class.cid = TERM_REC.cid JOIN student ON student.sid=TERM_REC.sid
GROUP BY class.cname
ORDER BY students desc;


3-
SELECT gid, gname, goccupation, COUNT(sid) 


FROM guardian 
NATURAL JOIN student 


WHERE gid = (

SELECT gid


FROM term_rec 
JOIN student 
USING (sid)


GROUP BY gid, cid
	

HAVING COUNT(sid) > 1)


GROUP BY gid, gname, goccupation;

 
4-
SELECT teacher.tname,teacher.tid
FROM teacher JOIN TERM_REC ON teacher.TID = TERM_REC.tid
WHERE teacher.tid IS NULL;




5-
SELECT class.cname,COUNT(student.sid) as total_of_students
FROM TERM_REC
JOIN class ON TERM_REC.cid=class.cid
JOIN student ON TERM_REC.sid=student.sid
GROUP BY class.cname
ORDER BY total_of_students;
