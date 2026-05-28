# Normalization Notes

## Example 1: Repeated Batch Information

In the raw dataset, batch names and mentor names repeat across multiple student records.

### Problem

This causes:

* storage redundancy
* update anomalies
* inconsistent spellings

### Solution

Separate batch information into a `batches` table.

---

## Example 2: Contest Problem Repetition

Contest metadata is repeated for every problem listed in a contest.

### Solution

Use:

* `contests`
* `contest_problems`

This creates a many-to-many mapping.

---

## Functional Dependency Example

In the students table:

student_id → full_name, email, batch_id

This means student attributes depend entirely on the primary key.

---

## Partial Dependency Example

In enrollments:

(student_id, course_id) → enrollment_date

But:
course_id → course_name

Therefore course_name should not remain in enrollments.

---

## Normal Form Discussion

### First Normal Form (1NF)

Achieved because:

* atomic column values
* no repeating groups

### Second Normal Form (2NF)

Achieved because:

* non-key attributes fully depend on entire primary keys

### Third Normal Form (3NF)

Achieved because:

* transitive dependencies removed
* reference data separated into dedicated tables

---

## Trade-offs

Some denormalization may improve analytics performance:

* storing final verdict in submissions
* storing contest score snapshots
