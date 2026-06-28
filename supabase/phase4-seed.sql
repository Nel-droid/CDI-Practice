-- ============================================================
-- Phase 4 seed: tests table + one placeholder Academic Reading test
-- Run this in the Supabase SQL Editor (once only).
-- ============================================================

-- 1. Create the tests table
CREATE TABLE IF NOT EXISTS public.tests (
  id               UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  skill            TEXT NOT NULL CHECK (skill IN ('reading', 'listening')),
  book             TEXT NOT NULL,
  test_label       TEXT NOT NULL,
  variant          TEXT NOT NULL DEFAULT 'academic'
                     CHECK (variant IN ('academic', 'general')),
  duration_seconds INTEGER NOT NULL DEFAULT 3600,
  content          JSONB NOT NULL,
  published        BOOLEAN NOT NULL DEFAULT false,
  created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE public.tests ENABLE ROW LEVEL SECURITY;

-- Authenticated users may read published tests
DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'tests' AND policyname = 'Authenticated users can read published tests'
  ) THEN
    CREATE POLICY "Authenticated users can read published tests"
      ON public.tests FOR SELECT
      TO authenticated
      USING (published = true);
  END IF;
END $$;

-- ============================================================
-- 2. Insert the placeholder Reading test (CDI Practice — Test 1)
--    36 questions across 3 passages covering all 7 question types.
--    All content is original placeholder material — NOT Cambridge.
-- ============================================================
INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'CDI Practice',
  'Test 1',
  'academic',
  3600,
  $json${
  "skill":"reading",
  "book":"CDI Practice",
  "testLabel":"Test 1",
  "variant":"academic",
  "durationSeconds":3600,
  "sections":[
    {
      "id":"p1",
      "title":"Passage 1",
      "passage":[
        {"ref":"A","text":"Urban agriculture has emerged as a significant trend in cities worldwide. In the past decade, the number of urban farms has increased by approximately 30% in major metropolitan areas. These initiatives range from small rooftop gardens to large-scale vertical farms that use hydroponic systems to grow crops without soil."},
        {"ref":"B","text":"The economic benefits of growing food within city boundaries are considerable. By reducing the distance food travels from farm to consumer, urban farms lower transportation costs significantly. Studies indicate that locally grown produce can be up to 40% cheaper for consumers when sold directly at farmers' markets. Additionally, urban farming creates jobs, with a typical medium-sized operation employing between five and twenty local residents."},
        {"ref":"C","text":"Urban agriculture also delivers substantial environmental advantages. Traditional farming contributes to deforestation and habitat loss, but urban farms make productive use of existing spaces such as rooftops and abandoned lots. Some city farms have introduced beehives and native plant species, creating small but meaningful pockets of biodiversity in otherwise concrete environments."},
        {"ref":"D","text":"Beyond economics and ecology, urban farming plays a role in strengthening communities. Shared garden spaces bring together residents who might otherwise never interact, fostering social cohesion. Research from several European cities has found that people who participate in community gardens report lower levels of stress and a greater sense of belonging."},
        {"ref":"E","text":"Despite these advantages, urban farming faces real obstacles. Land in cities is expensive, and securing long-term access to growing space is difficult. The initial investment in equipment, soil, and water systems can be substantial, and many projects rely on grants or subsidies to become financially viable."}
      ],
      "groups":[
        {
          "type":"true_false_notgiven",
          "instructions":"Do the following statements agree with the information in Passage 1? Write TRUE, FALSE, or NOT GIVEN.",
          "questions":[
            {"number":1,"prompt":"The number of urban farms has grown by approximately 30% over the last ten years.","answer":"TRUE","explanation":"Paragraph A states the number of urban farms has increased by approximately 30% in major metropolitan areas in the past decade.","evidence":{"sectionId":"p1","ref":"A","quote":"the number of urban farms has increased by approximately 30% in major metropolitan areas"}},
            {"number":2,"prompt":"Urban farms exclusively rely on hydroponic systems to grow crops.","answer":"FALSE","explanation":"Paragraph A says farms range from small rooftop gardens to large-scale vertical farms that use hydroponic systems — not all farms use hydroponics.","evidence":{"sectionId":"p1","ref":"A","quote":"range from small rooftop gardens to large-scale vertical farms that use hydroponic systems"}},
            {"number":3,"prompt":"Urban produce is always cheaper than food sold in supermarkets.","answer":"NOT GIVEN","explanation":"The passage mentions produce can be cheaper at farmers' markets, but makes no comparison with supermarket prices.","evidence":{"sectionId":"p1","ref":"B","quote":"locally grown produce can be up to 40% cheaper for consumers when sold directly at farmers' markets"}},
            {"number":4,"prompt":"A typical medium-sized urban farm employs between five and twenty people.","answer":"TRUE","explanation":"Paragraph B directly states 'a typical medium-sized operation employing between five and twenty local residents'.","evidence":{"sectionId":"p1","ref":"B","quote":"a typical medium-sized operation employing between five and twenty local residents"}},
            {"number":5,"prompt":"Urban farms have introduced beehives in some cities.","answer":"TRUE","explanation":"Paragraph C states 'Some city farms have introduced beehives and native plant species'.","evidence":{"sectionId":"p1","ref":"C","quote":"Some city farms have introduced beehives and native plant species"}},
            {"number":6,"prompt":"Community garden participation has been linked to reduced stress levels.","answer":"TRUE","explanation":"Paragraph D states research found people who participate in community gardens report lower levels of stress.","evidence":{"sectionId":"p1","ref":"D","quote":"people who participate in community gardens report lower levels of stress"}},
            {"number":7,"prompt":"Many urban farming projects require financial support from grants or subsidies.","answer":"TRUE","explanation":"Paragraph E explicitly states many projects rely on grants or subsidies to become financially viable.","evidence":{"sectionId":"p1","ref":"E","quote":"many projects rely on grants or subsidies to become financially viable"}}
          ]
        },
        {
          "type":"short_answer",
          "instructions":"Answer the questions below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "questions":[
            {"number":8,"prompt":"What agricultural method do large-scale vertical farms use to grow crops without soil?","answer":["hydroponic systems","hydroponic"],"wordLimit":2,"explanation":"Paragraph A describes large-scale vertical farms that use hydroponic systems to grow crops without soil.","evidence":{"sectionId":"p1","ref":"A","quote":"large-scale vertical farms that use hydroponic systems to grow crops without soil"}},
            {"number":9,"prompt":"By how much can locally grown produce be cheaper for consumers at farmers' markets?","answer":["40%"],"wordLimit":1,"explanation":"Paragraph B states produce can be up to 40% cheaper for consumers when sold directly at farmers' markets.","evidence":{"sectionId":"p1","ref":"B","quote":"locally grown produce can be up to 40% cheaper for consumers"}},
            {"number":10,"prompt":"What do some city farms introduce to create pockets of biodiversity?","answer":["beehives","native plant species","beehives and native plant species"],"wordLimit":2,"explanation":"Paragraph C mentions city farms have introduced beehives and native plant species, creating pockets of biodiversity.","evidence":{"sectionId":"p1","ref":"C","quote":"Some city farms have introduced beehives and native plant species"}},
            {"number":11,"prompt":"What financial support do many urban farming projects depend on?","answer":["grants","subsidies","grants or subsidies"],"wordLimit":2,"explanation":"Paragraph E states many projects rely on grants or subsidies to become financially viable.","evidence":{"sectionId":"p1","ref":"E","quote":"many projects rely on grants or subsidies"}},
            {"number":12,"prompt":"What do shared garden spaces foster among residents who participate?","answer":["social cohesion"],"wordLimit":2,"explanation":"Paragraph D states shared garden spaces foster social cohesion.","evidence":{"sectionId":"p1","ref":"D","quote":"fostering social cohesion"}},
            {"number":13,"prompt":"What is one obstacle urban farms face regarding the cost of city land?","answer":["expensive","land is expensive"],"wordLimit":2,"explanation":"Paragraph E states land in cities is expensive, making it difficult to secure growing space.","evidence":{"sectionId":"p1","ref":"E","quote":"Land in cities is expensive"}}
          ]
        }
      ]
    },
    {
      "id":"p2",
      "title":"Passage 2",
      "passage":[
        {"ref":"A","text":"For centuries, the ocean floor remained one of the most inaccessible environments on Earth. Early attempts to measure its depth relied on weighted ropes, a method that was slow and imprecise, sampling only individual points rather than producing continuous maps. The arrival of echo sounding in the twentieth century transformed this field, allowing ships to send sound pulses downward and calculate depth from the returning echo, enabling the first systematic surveys of large ocean areas."},
        {"ref":"B","text":"Modern ocean mapping has been revolutionised by satellite technology. Orbiting satellites detect subtle variations in sea surface height caused by the gravitational pull of underwater mountains and ridges. By measuring these variations with radar altimetry, scientists can infer the shape of the seabed without lowering any instrument into the water. This approach has allowed researchers to produce global-scale maps far more rapidly than conventional methods."},
        {"ref":"C","text":"Autonomous underwater vehicles, or AUVs, have become an essential tool in detailed ocean exploration. These robotic craft operate without human pilots, following pre-programmed routes at depths impossible for divers. Equipped with multibeam sonar, they produce detailed, continuous maps of the seabed at a fraction of the time and cost of crewed missions, and can operate continuously for days at a time."},
        {"ref":"D","text":"The data produced by modern ocean mapping is immense. A single AUV mission can generate terabytes of sonar recordings that must be cleaned of errors, merged with overlapping datasets, and processed through specialist software before a usable map emerges. The computational demands have driven investment in machine learning tools designed to automatically identify features such as seamounts and hydrothermal vents."},
        {"ref":"E","text":"Despite decades of effort, less than 25% of the global ocean floor has been mapped in high resolution. International initiatives such as Seabed 2030 bring together research institutions from dozens of countries to pool data, share methodologies, and work towards a complete map of the ocean floor by the end of the decade."}
      ],
      "groups":[
        {
          "type":"matching",
          "instructions":"Passage 2 has five paragraphs, A–E. Choose the correct heading for each paragraph from the list below.",
          "options":[
            {"key":"i","text":"The limitations of the earliest ocean depth measurements"},
            {"key":"ii","text":"Using surface observations to reveal underwater geography"},
            {"key":"iii","text":"Robotic craft that map the deep without human crews"},
            {"key":"iv","text":"Managing and interpreting huge volumes of recorded data"},
            {"key":"v","text":"Global cooperation to chart the remaining ocean floor"}
          ],
          "questions":[
            {"number":14,"prompt":"Paragraph A","answer":"i","explanation":"Paragraph A describes weighted ropes and early echo sounding — the slow and imprecise earliest methods of measuring ocean depth.","evidence":{"sectionId":"p2","ref":"A","quote":"Early attempts to measure its depth relied on weighted ropes, a method that was slow and imprecise"}},
            {"number":15,"prompt":"Paragraph B","answer":"ii","explanation":"Paragraph B explains how satellite radar altimetry detects sea surface height variations to infer seabed shape — surface observations revealing underwater geography.","evidence":{"sectionId":"p2","ref":"B","quote":"detect subtle variations in sea surface height caused by the gravitational pull of underwater mountains and ridges"}},
            {"number":16,"prompt":"Paragraph C","answer":"iii","explanation":"Paragraph C focuses on AUVs — autonomous robotic vehicles that map the seabed without human pilots.","evidence":{"sectionId":"p2","ref":"C","quote":"Autonomous underwater vehicles, or AUVs... operate without human pilots"}},
            {"number":17,"prompt":"Paragraph D","answer":"iv","explanation":"Paragraph D describes the challenge of processing terabytes of sonar data and using machine learning to manage it.","evidence":{"sectionId":"p2","ref":"D","quote":"A single AUV mission can generate terabytes of sonar recordings that must be cleaned"}},
            {"number":18,"prompt":"Paragraph E","answer":"v","explanation":"Paragraph E describes the Seabed 2030 initiative, an international collaboration to complete ocean floor mapping.","evidence":{"sectionId":"p2","ref":"E","quote":"International initiatives such as Seabed 2030 bring together research institutions from dozens of countries"}}
          ]
        },
        {
          "type":"multiple_choice",
          "instructions":"Choose the correct letter, A, B, C or D.",
          "questions":[
            {"number":19,"prompt":"What is described as a limitation of weighted rope measurements?","options":[{"key":"A","text":"They could only sample individual points"},{"key":"B","text":"They required specialist ships"},{"key":"C","text":"They were too expensive for widespread use"},{"key":"D","text":"They produced maps that were too detailed"}],"answer":"A","explanation":"Paragraph A states weighted ropes were slow and imprecise, sampling only individual points rather than producing continuous maps.","evidence":{"sectionId":"p2","ref":"A","quote":"sampling only individual points rather than producing continuous maps"}},
            {"number":20,"prompt":"How does satellite radar altimetry reveal the shape of the seabed?","options":[{"key":"A","text":"By lowering instruments into the water"},{"key":"B","text":"By detecting sea surface height variations"},{"key":"C","text":"By using sound pulses from orbit"},{"key":"D","text":"By photographing the ocean floor directly"}],"answer":"B","explanation":"Paragraph B explains that satellites detect subtle variations in sea surface height caused by the gravitational pull of underwater mountains.","evidence":{"sectionId":"p2","ref":"B","quote":"detect subtle variations in sea surface height caused by the gravitational pull of underwater mountains and ridges"}},
            {"number":21,"prompt":"What advantage do AUVs have over crewed missions?","options":[{"key":"A","text":"They can reach shallower depths"},{"key":"B","text":"They do not need pre-programmed routes"},{"key":"C","text":"They produce maps more quickly and cheaply"},{"key":"D","text":"They avoid using sonar technology"}],"answer":"C","explanation":"Paragraph C states AUVs produce maps at a fraction of the time and cost of crewed missions.","evidence":{"sectionId":"p2","ref":"C","quote":"at a fraction of the time and cost of crewed missions"}},
            {"number":22,"prompt":"What have machine learning tools been designed to do?","options":[{"key":"A","text":"Generate raw sonar recordings"},{"key":"B","text":"Replace AUVs in exploration"},{"key":"C","text":"Automatically identify seabed features"},{"key":"D","text":"Merge satellite and sonar datasets"}],"answer":"C","explanation":"Paragraph D explains machine learning tools are designed to automatically identify features such as seamounts and hydrothermal vents.","evidence":{"sectionId":"p2","ref":"D","quote":"automatically identify features such as seamounts and hydrothermal vents"}},
            {"number":23,"prompt":"What proportion of the ocean floor has been mapped in high resolution?","options":[{"key":"A","text":"More than half"},{"key":"B","text":"About a third"},{"key":"C","text":"Less than a quarter"},{"key":"D","text":"Approximately three-quarters"}],"answer":"C","explanation":"Paragraph E states less than 25% of the global ocean floor has been mapped in high resolution.","evidence":{"sectionId":"p2","ref":"E","quote":"less than 25% of the global ocean floor has been mapped in high resolution"}},
            {"number":24,"prompt":"What is the goal of the Seabed 2030 initiative?","options":[{"key":"A","text":"To develop faster AUV technology"},{"key":"B","text":"To produce a complete map of the ocean floor"},{"key":"C","text":"To share satellite altimetry data globally"},{"key":"D","text":"To fund machine learning research for oceans"}],"answer":"B","explanation":"Paragraph E states Seabed 2030 works towards a complete map of the ocean floor by the end of the decade.","evidence":{"sectionId":"p2","ref":"E","quote":"work towards a complete map of the ocean floor by the end of the decade"}}
          ]
        }
      ]
    },
    {
      "id":"p3",
      "title":"Passage 3",
      "passage":[
        {"ref":"A","text":"Glass is one of humanity's oldest manufactured materials, with evidence of production dating back to at least 3500 BCE in Mesopotamia. Early glass objects were solid beads and decorative amulets, made by melting silica sand with natural minerals including soda ash and limestone. Glassmakers discovered that adding different metallic oxides to the melt produced distinct colours: copper yielded turquoise, cobalt produced deep blue, and manganese created purple."},
        {"ref":"B","text":"The invention of glassblowing in Syria around 50 BCE transformed glass from a luxury reserved for the wealthy into a widely available commodity. By inserting a hollow iron tube into molten glass and blowing air through it, craftspeople could produce vessels of varying shapes and sizes far more efficiently than previous methods allowed. The technique spread rapidly through the Roman Empire, and glass vessels became common household objects rather than prestigious items."},
        {"ref":"C","text":"Glass underwent a fundamental change in thirteenth-century Venice. Glassmakers on the island of Murano developed a new formula producing exceptionally clear glass, which they named cristallo. The Venetian authorities recognised the commercial value of this innovation and guarded the manufacturing secrets jealously, confining glassmakers to the island and threatening those who attempted to leave with severe penalties."},
        {"ref":"D","text":"Flat glass for windows was not widely produced until the seventeenth century, when the cylinder method became common. Workers would blow a large glass bubble, cut it open, and flatten it into a sheet while still hot. Before this development, windows were made from small panes of thick crown glass that distorted the view, or from expensive imported Venetian sheets."},
        {"ref":"E","text":"The modern float glass process, developed in Britain by Alastair Pilkington in the 1950s, revolutionised flat glass manufacturing. Molten glass is poured onto a bath of liquid tin, on which it floats and spreads into a perfectly flat sheet of even thickness. The process was so efficient and produced such consistent quality that it rapidly replaced all previous methods and remains the standard production technique today."},
        {"ref":"F","text":"Contemporary glass science has moved far beyond transparent sheets. Tempered glass, formed by rapid heating and cooling, is up to five times stronger than ordinary glass and is used in car windscreens and phone screens. Borosilicate glass withstands extreme temperature changes and is essential in laboratory equipment and cookware. Optical fibres, strands of exceptionally pure glass that carry internet data as pulses of light, mark glass's unexpected role in the digital communications revolution."}
      ],
      "groups":[
        {
          "type":"completion",
          "instructions":"Complete the sentences below. Choose NO MORE THAN ONE WORD from the passage for each answer.",
          "questions":[
            {"number":25,"prompt":"Early glassmakers added metallic _______ to the melt to produce different colours.","answer":["oxides"],"wordLimit":1,"explanation":"Paragraph A states that adding different metallic oxides to the melt produced distinct colours.","evidence":{"sectionId":"p3","ref":"A","quote":"adding different metallic oxides to the melt produced distinct colours"}},
            {"number":26,"prompt":"Adding cobalt to glass produces a _______ blue colour.","answer":["deep"],"wordLimit":1,"explanation":"Paragraph A states cobalt produced deep blue.","evidence":{"sectionId":"p3","ref":"A","quote":"cobalt produced deep blue"}},
            {"number":27,"prompt":"Glassblowing allowed craftspeople to produce _______ of varying shapes more efficiently.","answer":["vessels"],"wordLimit":1,"explanation":"Paragraph B states craftspeople could produce vessels of varying shapes and sizes far more efficiently.","evidence":{"sectionId":"p3","ref":"B","quote":"craftspeople could produce vessels of varying shapes and sizes"}},
            {"number":28,"prompt":"The clear Venetian glass formula developed on the island of Murano was called _______.","answer":["cristallo"],"wordLimit":1,"explanation":"Paragraph C states the clear glass formula they named cristallo.","evidence":{"sectionId":"p3","ref":"C","quote":"they named cristallo"}},
            {"number":29,"prompt":"In the float glass process, molten glass is poured onto a bath of liquid _______.","answer":["tin"],"wordLimit":1,"explanation":"Paragraph E describes how molten glass is poured onto a bath of liquid tin.","evidence":{"sectionId":"p3","ref":"E","quote":"molten glass is poured onto a bath of liquid tin"}},
            {"number":30,"prompt":"Optical fibres carry internet data as pulses of _______ through strands of pure glass.","answer":["light"],"wordLimit":1,"explanation":"Paragraph F states optical fibres carry internet data as pulses of light.","evidence":{"sectionId":"p3","ref":"F","quote":"carry internet data as pulses of light"}}
          ]
        },
        {
          "type":"multiple_choice",
          "instructions":"Choose the correct letter, A, B, C or D.",
          "questions":[
            {"number":31,"prompt":"What was the main effect of the invention of glassblowing?","options":[{"key":"A","text":"It allowed glass to be made in new colours"},{"key":"B","text":"It made glass accessible to ordinary people"},{"key":"C","text":"It was invented by Roman craftspeople"},{"key":"D","text":"It required simpler equipment than earlier methods"}],"answer":"B","explanation":"Paragraph B states glassblowing transformed glass from a luxury reserved for the wealthy into a widely available commodity.","evidence":{"sectionId":"p3","ref":"B","quote":"transformed glass from a luxury reserved for the wealthy into a widely available commodity"}},
            {"number":32,"prompt":"Why did the Venetian authorities confine glassmakers to Murano?","options":[{"key":"A","text":"To give them better working facilities"},{"key":"B","text":"To prevent them from developing cristallo further"},{"key":"C","text":"To protect the secrets of their glassmaking methods"},{"key":"D","text":"To stop them using dangerous materials"}],"answer":"C","explanation":"Paragraph C states the authorities guarded the manufacturing secrets jealously, confining glassmakers to the island.","evidence":{"sectionId":"p3","ref":"C","quote":"guarded the manufacturing secrets jealously, confining glassmakers to the island"}},
            {"number":33,"prompt":"What was a disadvantage of crown glass in windows?","options":[{"key":"A","text":"It was more expensive than Venetian glass"},{"key":"B","text":"It distorted the view through the window"},{"key":"C","text":"It could not be cut into panes"},{"key":"D","text":"It was too fragile for window use"}],"answer":"B","explanation":"Paragraph D states crown glass was in small panes of thick crown glass that distorted the view.","evidence":{"sectionId":"p3","ref":"D","quote":"thick crown glass that distorted the view"}},
            {"number":34,"prompt":"What makes tempered glass different from ordinary glass?","options":[{"key":"A","text":"It is made from a different type of silica sand"},{"key":"B","text":"It is up to five times stronger"},{"key":"C","text":"It is used exclusively in laboratory equipment"},{"key":"D","text":"It is formed by slow, gradual cooling"}],"answer":"B","explanation":"Paragraph F states tempered glass is up to five times stronger than ordinary glass.","evidence":{"sectionId":"p3","ref":"F","quote":"up to five times stronger than ordinary glass"}}
          ]
        },
        {
          "type":"choose_two",
          "paired":true,
          "instructions":"Choose TWO letters, A–E.",
          "options":[{"key":"A","text":"Mirrors"},{"key":"B","text":"Phone screens"},{"key":"C","text":"Optical fibres"},{"key":"D","text":"Magnifying lenses"},{"key":"E","text":"Camera lenses"}],
          "questions":[
            {"number":35,"prompt":"Which TWO of the following modern glass products are mentioned in Paragraph F?","answer":["B","C"],"explanation":"Paragraph F mentions phone screens (tempered glass) and optical fibres as modern glass products.","evidence":{"sectionId":"p3","ref":"F","quote":"phone screens... Optical fibres, strands of exceptionally pure glass"}},
            {"number":36,"prompt":"Which TWO of the following modern glass products are mentioned in Paragraph F?","answer":["B","C"],"explanation":"Paragraph F mentions phone screens (tempered glass) and optical fibres as modern glass products.","evidence":{"sectionId":"p3","ref":"F","quote":"phone screens... Optical fibres, strands of exceptionally pure glass"}}
          ]
        },
        {
          "type":"choose_two",
          "paired":true,
          "instructions":"Choose TWO letters, A–E.",
          "options":[{"key":"A","text":"Soda ash"},{"key":"B","text":"Iron oxide"},{"key":"C","text":"Limestone"},{"key":"D","text":"Copper sulphate"},{"key":"E","text":"Charcoal"}],
          "questions":[
            {"number":37,"prompt":"According to Paragraph A, which TWO natural minerals are combined with silica sand to make early glass?","answer":["A","C"],"explanation":"Paragraph A states early glass was made by melting silica sand with natural minerals including soda ash and limestone.","evidence":{"sectionId":"p3","ref":"A","quote":"natural minerals including soda ash and limestone"}},
            {"number":38,"prompt":"According to Paragraph A, which TWO natural minerals are combined with silica sand to make early glass?","answer":["A","C"],"explanation":"Paragraph A states early glass was made by melting silica sand with natural minerals including soda ash and limestone.","evidence":{"sectionId":"p3","ref":"A","quote":"natural minerals including soda ash and limestone"}}
          ]
        }
      ]
    }
  ]
}$json$::jsonb,
  true
);
