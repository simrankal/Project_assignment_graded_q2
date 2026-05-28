our README should briefly explain:

project objective
dataset overview
normalization approach
files included
how to run schema.sql


# CodeJudge Relational Database Design

## Objective

This project converts the raw CodeJudge CSV dataset into a normalized relational database schema.

The work includes:

* schema understanding
* entity identification
* key and constraint analysis
* normalization reasoning
* SQL DDL creation
* ERD design

## Repository Contents

| File                      | Description                    |
| ------------------------- | ------------------------------ |
| schema.sql                | SQL DDL statements             |
| schema_explanation.md     | Dataset and schema explanation |
| keys_and_relationships.md | Key and constraint reasoning   |
| normalization_notes.md    | Normalization analysis         |
| assumptions.md            | Design assumptions             |
| erd.md / erd.png          | Relationship diagram           |

## Database Design Goals

* Reduce redundancy
* Maintain referential integrity
* Support scalable querying
* Preserve submission and contest history
* Normalize repeated information into separate entities

## How to Run

```sql
SOURCE schema.sql;
```

Compatible with:

* MySQL 8+
* PostgreSQL (minor syntax adjustments may be needed)
