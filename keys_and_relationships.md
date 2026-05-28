# Keys and Relationships

## Students Table

### Primary Key

`student_id`

Reason:

* uniquely identifies each student
* stable and non-null
* efficient for indexing

### Candidate Keys

* `student_id`
* `email`

### Alternate Key

`email`

Reason:

* expected to remain unique across students

### Foreign Keys

`batch_id` references `batches(batch_id)`

### Constraints

* `full_name` → NOT NULL
* `email` → UNIQUE
* `created_at` → NOT NULL

---

## Enrollments Table

### Composite Primary Key

(`student_id`, `course_id`)

Reason:

* one student can enroll in many courses
* one course can contain many students
* combination uniquely identifies enrollment

### Foreign Keys

* `student_id` → students
* `course_id` → courses

### CHECK Constraints

* status IN ('active','completed','dropped')
