# Assumptions

1. Student emails are assumed to be unique.
2. Every submission belongs to exactly one student.
3. Contest-problem relationships are many-to-many.
4. Null timestamps in raw CSV are treated as invalid records.
5. Verdict values are constrained to predefined enums.
6. Staging tables may temporarily allow inconsistent records before cleaning.
