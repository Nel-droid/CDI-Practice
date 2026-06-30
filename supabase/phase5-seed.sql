-- ============================================================
-- Phase 5 seed: CDI Practice — Listening Test 1
-- Source audio: C:\WORK\IELTS\IELTS Mock\Test 1\ (four MP3s)
-- Questions extracted from Mock_Listening_Test1.html
--
-- BEFORE RUNNING this INSERT:
--   1. Create bucket 'listening-audio' (see bucket policy SQL below).
--   2. Upload the four MP3s to the bucket at these paths:
--        test1/part1.mp3   test1/part2.mp3
--        test1/part3.mp3   test1/part4.mp3
--   3. Replace every "TODO" in the transcript[] arrays with verbatim
--      lines from the printed transcript (Listening Test.pdf).
--   4. Replace every TODO in evidence.quote with a verbatim
--      substring of the matching transcript line.
--   5. Replace every TODO in evidence.ref with the matching
--      transcript entry id (e.g. "s1-3").
--   6. Replace the four Q11–14 prompts with the named map locations
--      visible on the Part 2 map image.
--   7. Change published to true once all TODOs are resolved.
--
-- GRANTS: public.tests was created in Phase 4 with an explicit
--   GRANT SELECT ON public.tests TO authenticated;
-- That grant already covers listening rows — no new grant needed.
--
-- BUCKET POLICY (run separately in Supabase SQL editor):
-- ============================================================
-- -- 1. Create private bucket
-- INSERT INTO storage.buckets (id, name, public)
-- VALUES ('listening-audio', 'listening-audio', false)
-- ON CONFLICT (id) DO NOTHING;
--
-- -- 2. Allow authenticated users to read (stream) audio
-- CREATE POLICY "Authenticated users can stream listening audio"
--   ON storage.objects FOR SELECT
--   TO authenticated
--   USING (bucket_id = 'listening-audio');
-- ============================================================

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'CDI Practice',
  'Test 1',
  'academic',
  1800,
  $json${
  "skill": "listening",
  "book": "CDI Practice",
  "testLabel": "Test 1",
  "variant": "academic",
  "durationSeconds": 1800,
  "sections": [

    {
      "id": "s1",
      "title": "Part 1",
      "audioPath": "Part 1.mp3",
      "transcript": [
        {"id":"s1-1","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[]},
        {"id":"s1-2","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[1]},
        {"id":"s1-3","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[2]},
        {"id":"s1-4","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[3,4]},
        {"id":"s1-5","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[5]},
        {"id":"s1-6","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[6]},
        {"id":"s1-7","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[7]},
        {"id":"s1-8","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[8,9]},
        {"id":"s1-9","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[10]}
      ],
      "groups": [
        {
          "type": "completion",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formTitle": "Lifeguard Application",
          "questions": [
            {
              "number": 1,
              "prompt": "Address: 130 South Main Street, Lake _______",
              "answer": ["elsinore"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 2,
              "prompt": "Contact number: _______ (cellphone)",
              "answer": ["077896245"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 3,
              "prompt": "Has a part-time job as a _______",
              "answer": ["waiter"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 4,
              "prompt": "Hopes to work in a high school as a _______ coach",
              "answer": ["baseball"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 5,
              "prompt": "Other relevant work experience: worked at the _______ as a lifeguard",
              "answer": ["beach"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 6,
              "prompt": "Other relevant skills: _______",
              "answer": ["diving"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 7,
              "prompt": "Needs a certificate: it expires in _______",
              "answer": ["october"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 8,
              "prompt": "Preferred working time: _______ mornings",
              "answer": ["saturday"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 9,
              "prompt": "He can start to work at _______ o'clock",
              "answer": ["6"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 10,
              "prompt": "Source of information about the job: _______",
              "answer": ["radio"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s1","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            }
          ]
        }
      ]
    },

    {
      "id": "s2",
      "title": "Part 2",
      "audioPath": "Part 2.mp3",
      "transcript": [
        {"id":"s2-1","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[]},
        {"id":"s2-2","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[11,12,13,14]},
        {"id":"s2-3","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[15]},
        {"id":"s2-4","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[16]},
        {"id":"s2-5","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[17]},
        {"id":"s2-6","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[18]},
        {"id":"s2-7","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[19]},
        {"id":"s2-8","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[20]}
      ],
      "groups": [
        {
          "type": "matching",
          "instructions": "Label the map below. Write the correct letter, A–I, next to Questions 11–14.",
          "options": [
            {"key":"A","text":"A"},{"key":"B","text":"B"},{"key":"C","text":"C"},
            {"key":"D","text":"D"},{"key":"E","text":"E"},{"key":"F","text":"F"},
            {"key":"G","text":"G"},{"key":"H","text":"H"},{"key":"I","text":"I"}
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "TODO: map location name (read from Part 2 map image)",
              "answer": "B",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 12,
              "prompt": "TODO: map location name (read from Part 2 map image)",
              "answer": "E",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 13,
              "prompt": "TODO: map location name (read from Part 2 map image)",
              "answer": "F",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 14,
              "prompt": "TODO: map location name (read from Part 2 map image)",
              "answer": "I",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            }
          ]
        },
        {
          "type": "multiple_choice",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 15,
              "prompt": "What warning does the speaker give about cycling on the Elmsden Way?",
              "options": [
                {"key":"A","text":"The roads usually have heavy traffic."},
                {"key":"B","text":"Bad weather can cause problems."},
                {"key":"C","text":"There may be animals on the cycle path."}
              ],
              "answer": "C",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 16,
              "prompt": "What does the speaker say about Elmsden Station?",
              "options": [
                {"key":"A","text":"It is a very busy station."},
                {"key":"B","text":"It has been modernized."},
                {"key":"C","text":"It reopened recently."}
              ],
              "answer": "C",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 17,
              "prompt": "In the Visitors' Centre, people can",
              "options": [
                {"key":"A","text":"hire a bicycle."},
                {"key":"B","text":"buy refreshments."},
                {"key":"C","text":"learn about local history."}
              ],
              "answer": "A",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 18,
              "prompt": "If cyclists want to travel between Elmsden and Langton by train,",
              "options": [
                {"key":"A","text":"they need to book in advance."},
                {"key":"B","text":"they have to travel at the weekend."},
                {"key":"C","text":"they must pay an additional charge for their bicycle."}
              ],
              "answer": "B",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 19,
              "prompt": "What warning does the speaker give about walking to the River Elm?",
              "options": [
                {"key":"A","text":"It can take a long time to get back."},
                {"key":"B","text":"There is nowhere to leave bicycles."},
                {"key":"C","text":"The waterfall is inaccessible on foot."}
              ],
              "answer": "A",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 20,
              "prompt": "To find out about other cycle paths in the region, you can",
              "options": [
                {"key":"A","text":"look in the local newspaper."},
                {"key":"B","text":"check the radio station website."},
                {"key":"C","text":"ring up the national cycle network."}
              ],
              "answer": "A",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s2","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            }
          ]
        }
      ]
    },

    {
      "id": "s3",
      "title": "Part 3",
      "audioPath": "Part 3.mp3",
      "transcript": [
        {"id":"s3-1","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[]},
        {"id":"s3-2","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[21,22]},
        {"id":"s3-3","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[23,24,25]},
        {"id":"s3-4","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[26]},
        {"id":"s3-5","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[27]},
        {"id":"s3-6","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[28]},
        {"id":"s3-7","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[29]},
        {"id":"s3-8","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[30]}
      ],
      "groups": [
        {
          "type": "matching",
          "instructions": "What did the students say about each of the following volcanoes for their presentation? Choose FIVE answers from the box and write the correct letter, A–G, next to Questions 21–25.",
          "options": [
            {"key":"A","text":"need more photos to support"},
            {"key":"B","text":"repeat other people's studies"},
            {"key":"C","text":"inaccurate information"},
            {"key":"D","text":"need first-hand material"},
            {"key":"E","text":"need more details"},
            {"key":"F","text":"no need to talk about it"},
            {"key":"G","text":"check again"}
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Shield volcanoes",
              "answer": "B",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 22,
              "prompt": "Stratovolcanoes",
              "answer": "E",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 23,
              "prompt": "Rhyolite caldera complexes",
              "answer": "C",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 24,
              "prompt": "Monogenetic fields",
              "answer": "G",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 25,
              "prompt": "Cinder cones",
              "answer": "F",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            }
          ]
        },
        {
          "type": "multiple_choice",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 26,
              "prompt": "In Erica's view, what is wrong with Ian's last presentation?",
              "options": [
                {"key":"A","text":"He did not read loud enough."},
                {"key":"B","text":"He did not understand the main reason."},
                {"key":"C","text":"He did not provide enough evidence."}
              ],
              "answer": "B",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 27,
              "prompt": "What materials do the students agree to add to their presentation?",
              "options": [
                {"key":"A","text":"a complete documentary"},
                {"key":"B","text":"photographs included in the handouts"},
                {"key":"C","text":"Internet video clips"}
              ],
              "answer": "C",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 28,
              "prompt": "By using extinct and dormant volcanoes, the students try to",
              "options": [
                {"key":"A","text":"distinguish between scientific and popular terms."},
                {"key":"B","text":"distinguish between two different types of volcanoes."},
                {"key":"C","text":"distinguish whether an eruption is about to happen."}
              ],
              "answer": "A",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 29,
              "prompt": "What did the professor say about Erica's last presentation?",
              "options": [
                {"key":"A","text":"She carried out an in-depth discussion with other students."},
                {"key":"B","text":"She did not provide sufficient data."},
                {"key":"C","text":"She did not fully develop a personal point."}
              ],
              "answer": "C",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            },
            {
              "number": 30,
              "prompt": "The students both agree that volcanoes",
              "options": [
                {"key":"A","text":"haven't caused disastrous outcomes."},
                {"key":"B","text":"cannot help to reshape the landscape."},
                {"key":"C","text":"are not fully recognised for their values."}
              ],
              "answer": "C",
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s3","ref":"TODO","quote":"TODO: verbatim transcript quote"}
            }
          ]
        }
      ]
    },

    {
      "id": "s4",
      "title": "Part 4",
      "audioPath": "Part 4.mp3",
      "transcript": [
        {"id":"s4-1","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[]},
        {"id":"s4-2","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[31]},
        {"id":"s4-3","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[32]},
        {"id":"s4-4","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[33,34,35]},
        {"id":"s4-5","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[36]},
        {"id":"s4-6","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[37]},
        {"id":"s4-7","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[38]},
        {"id":"s4-8","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[39]},
        {"id":"s4-9","speaker":"TODO","text":"TODO: paste verbatim transcript line here","evidenceForQuestions":[40]}
      ],
      "groups": [
        {
          "type": "completion",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formTitle": "Dolphin Intelligence",
          "questions": [
            {
              "number": 31,
              "prompt": "Dolphins cannot find a way of escaping barriers such as fishing _______ for catching tuna",
              "answer": ["nets"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 32,
              "prompt": "People wrongly thought dolphins to be smart and happy as they often have a _______",
              "answer": ["smile"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 33,
              "prompt": "Small-brained animals such as pigeons and _______ can perform various complex tasks",
              "answer": ["rats"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 34,
              "prompt": "Pigeons are _______ of themselves",
              "answer": ["aware"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 35,
              "prompt": "Pigeons are trained to conditional responses and _______ reactions",
              "answer": ["instinctive"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 36,
              "prompt": "Billy can imitate the keepers' _______ through other dolphins",
              "answer": ["walking"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 37,
              "prompt": "Karen hides a _______ for more food",
              "answer": ["newspaper"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 38,
              "prompt": "For the past century, dolphins have been seen as _______ animals",
              "answer": ["social"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 39,
              "prompt": "Each dolphin produces a unique sound, like the _______",
              "answer": ["whistle"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            },
            {
              "number": 40,
              "prompt": "They touch each other to make up after a _______",
              "answer": ["fight"],
              "wordLimit": 1,
              "explanation": "TODO: explanation grounded in transcript",
              "evidence": {"sectionId":"s4","ref":"TODO","quote":"TODO: verbatim transcript quote containing the answer"}
            }
          ]
        }
      ]
    }

  ]
}$json$::jsonb,
  false
);

-- ============================================================
-- VERIFY after INSERT:
-- Expected: 1 row, skill='listening', 40 question slots, published=false
-- ============================================================
SELECT
  id,
  book,
  test_label,
  skill,
  published,
  (
    SELECT sum(jsonb_array_length(grp->'questions'))
    FROM jsonb_array_elements(t.content->'sections') sec,
         jsonb_array_elements(sec->'groups') grp
  ) AS total_slots
FROM public.tests t
WHERE skill = 'listening'
  AND book = 'CDI Practice'
  AND test_label = 'Test 1';
-- Expected: total_slots = 40, published = false
