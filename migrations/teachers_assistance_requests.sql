 CREATE TABLE teachers(
id SERIAL PRIMARY KEY NOT NULL, --A unique identifier
name VARCHAR(255) NOT NULL, --The name of the teacher
is_active BOOLEAN DEFAULT TRUE ,--If the teacher is actively teaching right now.
start_date date, --The date that the teacher started working.
end_date date-- The date that the teacher stopped working.
);

CREATE TABLE assistance_request( 
id SERIAL PRIMARY KEY NOT NULL,--A unique identifier
assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,--The id of the assignment the request was made from
student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,--The id of the student making the request
teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,--The id of the teacher responding to the request
created_at TIMESTAMP,--The timestamp when the request was made
started_at TIMESTAMP,--The timestamp when the assistance started
completed_at TIMESTAMP,--The timestamp when the assistance was completed
student_feedback VARCHAR(255),--Feedback about the student given by the teacher
teacher_feedback VARCHAR(255)--Feedback about the teacher given by the student
);