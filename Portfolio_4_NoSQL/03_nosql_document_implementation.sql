
-- PORTFOLIO 4: DOCUMENT-ORIENTED DATA MODEL
-- PostgreSQL JSONB implementation

CREATE TABLE IF NOT EXISTS public.nosql_student_documents (
    document_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_record JSONB NOT NULL
);

### Step 3 — Insert the student document

```sql
INSERT INTO public.nosql_student_documents (student_record)
VALUES (
    '{
      "student_id": 1,
      "matric_number": "MIVA/PG/2025/001",
      "student": {
        "first_name": "Chinedu",
        "last_name": "Okoro",
        "email": "chinedu.okoro@example.com"
      },
      "programme": {
        "name": "Master of Information Technology",
        "level": "Masters",
        "department": "Information Technology"
      },
      "enrolments": [
        {
          "course_code": "MIT801",
          "course_title": "Advanced Database Systems",
          "semester": 1,
          "status": "Completed",
          "score": 85,
          "grade": "A"
        },
        {
          "course_code": "MIT802",
          "course_title": "Information Systems Management",
          "semester": 1,
          "status": "Registered"
        }
      ],
      "academic_session": "2025/2026"
    }'::jsonb
);
```

### Step 4 — Retrieve the document

```sql
SELECT *
FROM public.nosql_student_documents;
```

### Step 5 — Execute and confirm

Save the file in GitHub, then copy the complete SQL into Supabase SQL Editor and run it.

You should see one student document containing the nested student information, programme and enrolments.

**Important:** If you accidentally run the INSERT twice, you'll create a duplicate document. Run the setup and insertion only once for now.

Tell me what result you get. We'll then query individual fields inside the JSON document.
