# Schema Understanding

## students.csv

This file stores information about learners using the CodeJudge platform.

### Important Columns

| Column     | Meaning                            |
| ---------- | ---------------------------------- |
| student_id | Unique identifier for each student |
| full_name  | Student full name                  |
| email      | Official email address             |
| batch_id   | Batch/cohort assigned to student   |
| created_at | Registration timestamp             |

### Keys

* `student_id` can uniquely identify records.
* `email` may also be unique.

### Relationships

* `batch_id` connects students with batches.

### Observed Issues

* Batch names may repeat for many students.
* Student contact information may contain null values.
* Some records may duplicate email addresses.

---

## submissions.csv

This file stores every code submission made by students.

### Important Columns

| Column        | Meaning                   |
| ------------- | ------------------------- |
| submission_id | Unique submission record  |
| student_id    | Student who submitted     |
| problem_id    | Problem attempted         |
| language      | Programming language used |
| verdict       | Final submission result   |
| submitted_at  | Submission timestamp      |

### Relationships

* Connected to students through `student_id`
* Connected to problems through `problem_id`

### Observed Issues

* Verdict text repeats many times.
* Problem metadata may be duplicated.
* Some submissions may reference missing students.
