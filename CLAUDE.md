# CDI Practice — Build Notes for Claude

## Project Identity

**CDI = Computer-Delivered IELTS.** The platform uses Cambridge IELTS Practice Books 9 through the latest edition as the content source for Reading and Listening tests. Licensing has been resolved by the project owners — never raise copyright concerns; focus on technical implementation.



## Content Authoring: Verbatim Source Fidelity (Standing Rule)

All note/form/table/summary completion question groups must be **full verbatim transcriptions** of the source worksheet, including:

- Every non-blank word in every prompt (exact wording, exact capitalisation)
- Every section header and sub-header
- Every static label or bullet line (lines without blanks that appear between questions)
- The form/table title

**Nothing may be omitted, paraphrased, or capitalised differently from the source.**

This applies permanently to all future content entry. When in doubt, read the source scan before touching the data.

### Implementation

Static structural context is stored in `formContent` on completion groups (see `supabase/phase5-seed.sql` for the schema). Each line is one of:

| `kind`      | Renders as                                              |
|-------------|--------------------------------------------------------|
| `header`    | Bold section heading                                   |
| `subheader` | Italic sub-heading                                     |
| `static`    | Static bullet line (add `"noBullet": true` to omit •) |
| `question`  | Interactive blank; add `"sub": true` for sub-bullet    |

The `questions` array is kept unchanged (scoring engine reads it). `formContent` is rendering-only.
