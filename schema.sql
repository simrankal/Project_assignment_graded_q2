CREATE TABLE batches (
    batch_id INT PRIMARY KEY,
    batch_name VARCHAR(100) NOT NULL UNIQUE,
    mentor_name VARCHAR(100)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    batch_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL,

    CONSTRAINT fk_student_batch
        FOREIGN KEY (batch_id)
        REFERENCES batches(batch_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,

    PRIMARY KEY (student_id, course_id),

    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_enrollment_course
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id),

    CONSTRAINT chk_enrollment_status
        CHECK (status IN ('active', 'completed', 'dropped'))
);
