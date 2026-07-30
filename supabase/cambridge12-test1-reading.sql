DELETE FROM public.tests WHERE book='Cambridge IELTS 12' AND test_label='Test 1' AND skill='reading';
INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 12',
  'Test 1',
  'academic',
  3600,
  $c12t1r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Cork",
      "passage": [
        {
          "ref": "1",
          "text": "Cork – the thick bark of the cork oak tree (Quercus suber) – is a remarkable material. It is tough, elastic, buoyant, and fire-resistant, and suitable for a wide range of purposes. It has also been used for millennia: the ancient Egyptians sealed their sarcophagi (stone coffins) with cork, while the ancient Greeks and Romans used it for anything from beehives to sandals."
        },
        {
          "ref": "2",
          "text": "And the cork oak itself is an extraordinary tree. Its bark grows up to 20 cm in thickness, insulating the tree like a coat wrapped around the trunk and branches and keeping the inside at a constant 20 C all year round. Developed most probably as a defence against forest fires, the bark of the cork oak has a particular cellular structure – with about 40 million cells per cubic centimetre – that technology has never succeeded in replicating. The cells are filled with air, which is why cork is so buoyant. It also has an elasticity that means you can squash it and watch it spring back to its original size and shape when you release the pressure."
        },
        {
          "ref": "3",
          "text": "Cork oaks grow in a number of Mediterranean countries, including Portugal, Spain, Italy, Greece and Morocco. They flourish in warm, sunny climates where there is a minimum of 400 millimetres of rain per year, and not more than 800 millimetres. Like grape vines, the trees thrive in poor soil, putting down deep roots in search of moisture and nutrients. Southern Portugal’s Alentejo region meets all of these requirements, which explains why, by the early 20th century, this region had become the world’s largest producer of cork, and why today it accounts for roughly half of all cork production around the world."
        },
        {
          "ref": "4",
          "text": "Most cork forests are family-owned. Many of these family businesses, and indeed many of the trees themselves, are around 200 years old. Cork production is, above all, an exercise in patience. From the planting of a cork sapling to the first harvest takes 25 years, and a gap of approximately a decade must separate harvests from an individual tree. And for top-quality cork, it’s necessary to wait a further 15 or 20 years. You even have to wait for the right kind of summer’s day to harvest cork. If the bark is stripped on a day when it’s too cold – or when the air is damp – the tree will be damaged."
        },
        {
          "ref": "5",
          "text": "o Cork harvesting is a very specialised profession. No mechanical means of stripping cork bark has been invented, so the job is done by teams of highly skilled workers. First, they make vertical cuts down the bark using small sharp axes, then lever it away in pieces as large as they can manage. The most skilful cork-strippers prise away a semi-circular husk that runs the length of the trunk from just above ground level to the first branches. It is then dried on the ground for about four months, before being taken to factories, where it is boiled to kill any insects that might remain in the cork. Over 60% of cork then goes on to be made into traditional bottle stoppers, with most of the remainder being used in the construction trade. Corkboard and cork tiles are ideal for thermal and acoustic insulation, while granules of cork are used in the manufacture of concrete."
        },
        {
          "ref": "6",
          "text": "Recent years have seen the end of the virtual monopoly of cork as the material for bottle stoppers, due to concerns about the effect it may have on the contents of the bottle. This is caused by a chemical compound called 2,4,6-trichloroanisole (TCA), which forms through the interaction of plant phenols, chlorine and mould. The tiniest concentrations – as little as three or four parts to a trillion – can spoil the taste of the product contained in the bottle. The result has been a gradual yet steady move first towards plastic stoppers and, more recently, to aluminium screw caps. These substitutes are cheaper to manufacture and, in the case of screw caps, move convenient for the user."
        },
        {
          "ref": "7",
          "text": "The classic cork stopper does have several advantages, however. Firstly, its traditional image is more in keeping with that of the type of high quality goods with which it has long been associated. Secondly – and very importantly – cork is a sustainable product that can be recycled without difficulty. Moreover, cork forests are a resource which support local biodiversity, and prevent desertification in the regions where they are planted. So, given the current concerns about environmental issues, the future of this ancient material once again looks promising."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "true_false_notgiven",
          "label": "Questions 1–5",
          "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 1,
              "prompt": "The cork oak has the thickest bark of any living tree.",
              "answer": "NOT GIVEN",
              "explanation": "The passage mentions bark grows up to 20 cm but makes no comparison with other trees.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Its bark grows up to 20 cm in thickness"
              }
            },
            {
              "number": 2,
              "prompt": "Scientists have developed a synthetic cork with the same cellular structure as natural cork.",
              "answer": "FALSE",
              "explanation": "Technology has never succeeded in replicating the cellular structure.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "the bark of the cork oak has a particular cellular structure – with about 40 million cells per cubic centimetre – that technology has never succeeded in replicating"
              }
            },
            {
              "number": 3,
              "prompt": "Individual cork oak trees must be left for 25 years between the first and second harvest.",
              "answer": "FALSE",
              "explanation": "25 years is from planting to first harvest; between harvests it is approximately a decade.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "From the planting of a cork sapling to the first harvest takes 25 years, and a gap of approximately a decade must separate harvests from an individual tree"
              }
            },
            {
              "number": 4,
              "prompt": "Cork bark should be stripped in dry atmospheric conditions.",
              "answer": "TRUE",
              "explanation": "If the bark is stripped when the air is damp, the tree will be damaged.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "If the bark is stripped on a day when it’s too cold – or when the air is damp – the tree will be damaged"
              }
            },
            {
              "number": 5,
              "prompt": "The only way to remove the bark from cork oak trees is by hand.",
              "answer": "TRUE",
              "explanation": "No mechanical means of stripping cork bark has been invented.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "No mechanical means of stripping cork bark has been invented, so the job is done by teams of highly skilled workers"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "completion",
          "label": "Questions 6–13",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "Comparison of aluminium screw caps and cork bottle stoppers",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Advantages of aluminium screw caps"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "Advantages of cork bottle stoppers"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "question",
              "number": 11
            },
            {
              "kind": "question",
              "number": 12
            },
            {
              "kind": "question",
              "number": 13
            }
          ],
          "questions": [
            {
              "number": 6,
              "prompt": "do not affect the _______ of the bottle contents",
              "answer": [
                "taste"
              ],
              "wordLimit": 1,
              "explanation": "TCA can spoil the taste of the product.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "can spoil the taste of the product contained in the bottle"
              }
            },
            {
              "number": 7,
              "prompt": "are _______ to produce",
              "answer": [
                "cheaper"
              ],
              "wordLimit": 1,
              "explanation": "These substitutes are cheaper to manufacture.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "These substitutes are cheaper to manufacture"
              }
            },
            {
              "number": 8,
              "prompt": "are _______ to use",
              "answer": [
                "convenient"
              ],
              "wordLimit": 1,
              "explanation": "Screw caps are more convenient for the user.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "in the case of screw caps, more convenient for the user"
              }
            },
            {
              "number": 9,
              "prompt": "suit the _______ of quality products",
              "answer": [
                "image"
              ],
              "wordLimit": 1,
              "explanation": "Its traditional image is more in keeping with high quality goods.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "its traditional image is more in keeping with that of the type of high quality goods with which it has long been associated"
              }
            },
            {
              "number": 10,
              "prompt": "made from a _______ material",
              "answer": [
                "sustainable"
              ],
              "wordLimit": 1,
              "explanation": "Cork is a sustainable product.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "cork is a sustainable product that can be recycled without difficulty"
              }
            },
            {
              "number": 11,
              "prompt": "easily _______",
              "answer": [
                "recycled"
              ],
              "wordLimit": 1,
              "explanation": "Cork can be recycled without difficulty.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "can be recycled without difficulty"
              }
            },
            {
              "number": 12,
              "prompt": "cork forests aid _______",
              "answer": [
                "biodiversity"
              ],
              "wordLimit": 1,
              "explanation": "Cork forests support local biodiversity.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "cork forests are a resource which support local biodiversity"
              }
            },
            {
              "number": 13,
              "prompt": "cork forests stop _______ happening",
              "answer": [
                "desertification"
              ],
              "wordLimit": 1,
              "explanation": "Cork forests prevent desertification.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "prevent desertification in the regions where they are planted"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "Collecting as a Hobby",
      "passage": [
        {
          "ref": "1",
          "text": "Collecting must be one of the most varied of human activities, and it’s one that many of us psychologists find fascinating. Many forms of collecting have been dignified with a technical name: an archtophilist collects teddy bears, a philatelist collects postage stamps, and a deltiologist collects postcards. Amassing hundreds or even thousands of postcards, chocolate wrappers or whatever, takes time, energy and money that could surely be put to much more productive use. And yet there are millions of collectors around the world. Why do they do it?"
        },
        {
          "ref": "2",
          "text": "There are the people who collect because they want to make money – this could be called an instrumental reason for collecting; that is, collecting as a means to an end. They’ll look for, say, antiques that they can buy cheaply and expect to be able to sell at a profit. But there may well be a psychological element, too – buying cheap and selling dear can give the collector a sense of triumph. And as selling online is so easy, more and more people are joining in."
        },
        {
          "ref": "3",
          "text": "Many collectors collect to develop their social life, attending meetings of a group of collectors and exchanging information on items. This is a variant on joining a bridge club or a gym, and similarly brings them into contact with like-minded people."
        },
        {
          "ref": "4",
          "text": "Another motive for collecting is the desire to find something special, or a particular example of the collected item, such as a rare early recording by a particular singer. Some may spend their whole lives in a hunt for this. Psychologically, this can give a purpose to a life that otherwise feels aimless. There is a danger, though, that if the individual is ever lucky enough to find what they’re looking for, rather than celebrating their success, they may feel empty, now that the goal that drove them on has gone."
        },
        {
          "ref": "5",
          "text": "If you think about collecting postage stamps, another potential reason for it – or, perhaps, a result of collecting – is its educational value. Stamp collecting opens a window to other countries, and to the plants, animals, or famous people shown on their stamps. Similarly, in the 19th century, many collectors amassed fossils, animals and plants from around the globe, and their collections provided a vast amount of information about the natural world. Without those collections, our understanding would be greatly inferior to what it is."
        },
        {
          "ref": "6",
          "text": "In the past – and nowadays, too, though to a lesser extent – a popular form of collecting, particularly among boys and men, was trainspotting. This might involve trying to see every locomotive of a particular type, using published data that identifies each one, and ticking off each engine as it is seen. Trainspotters exchange information, these days often by mobile phone, so they can work out where to go to, to see a particular engine. As a by-product, many practitioners of the hobby become very knowledgeable about railway operations, or the technical specifications of different engine types."
        },
        {
          "ref": "7",
          "text": "Similarly, people who collect dolls may go beyond simply enlarging their collection, and develop an interest in the way that dolls are made, or the materials that are used. These have changed over the centuries from the wood that was standard in 16th century Europe, through the wax and porcelain of later centuries, to the plastics of today’s dolls. Or collectors might be inspired to study how dolls reflect notions of what children like, or ought to like."
        },
        {
          "ref": "8",
          "text": "Not all collectors are interested in learning from their hobby, though, so what we might call a psychological reason for collecting is the need for a sense of control, perhaps as a way of dealing with insecurity. Stamps collectors, for instance, arrange their stamps in albums, usually very neatly, organising their collection according to certain commonplace principles – perhaps by country in alphabetical order, or grouping stamps by what they depict – people, birds, maps, and so on. One reason, conscious or not, for what someone chooses to collect is to show the collector’s individualism. Someone who decides to collect something as unexpected as dog collars, for instance, may be conveying their belief that they must be interesting themselves. And believe it or not, there is at least one dog collar museum in existence, and it grew out of a personal collection. Of course, all hobbies give pleasure, but the common factor in collecting is usually passion: pleasure is putting it far too mildly. More than most other hobbies, collecting can be totally engrossing, and can give a strong sense of personal fulfilment. To non-collectors it may appear an eccentric, if harmless, way of spending time, but potentially, collecting has a lot going for it."
        }
      ],
      "groups": [
        {
          "id": "g3",
          "type": "completion",
          "label": "Questions 14–21",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "questions": [
            {
              "number": 14,
              "prompt": "The writer mentions collecting _______ as an example of collecting in order to make money.",
              "answer": [
                "antiques"
              ],
              "wordLimit": 1,
              "explanation": "They'll look for antiques that they can buy cheaply and sell at a profit.",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "They’ll look for, say, antiques that they can buy cheaply and expect to be able to sell at a profit"
              }
            },
            {
              "number": 15,
              "prompt": "Collectors may get a feeling of _______ from buying and selling items.",
              "answer": [
                "triumph"
              ],
              "wordLimit": 1,
              "explanation": "Buying cheap and selling dear can give a sense of triumph.",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "buying cheap and selling dear can give the collector a sense of triumph"
              }
            },
            {
              "number": 16,
              "prompt": "Collectors’ clubs provide opportunities to share _______",
              "answer": [
                "information"
              ],
              "wordLimit": 1,
              "explanation": "Attending meetings and exchanging information on items.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "attending meetings of a group of collectors and exchanging information on items"
              }
            },
            {
              "number": 17,
              "prompt": "Collectors’ clubs offer _______ with people who have similar interests.",
              "answer": [
                "contact",
                "meetings"
              ],
              "wordLimit": 1,
              "explanation": "It brings them into contact with like-minded people.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "brings them into contact with like-minded people"
              }
            },
            {
              "number": 18,
              "prompt": "Collecting sometimes involves a life-long _______ for a special item.",
              "answer": [
                "hunt",
                "desire"
              ],
              "wordLimit": 1,
              "explanation": "Some may spend their whole lives in a hunt for a rare item.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "Some may spend their whole lives in a hunt for this"
              }
            },
            {
              "number": 19,
              "prompt": "Searching for something particular may prevent people from feeling their life is completely _______",
              "answer": [
                "aimless",
                "empty"
              ],
              "wordLimit": 1,
              "explanation": "Collecting can give a purpose to a life that otherwise feels aimless.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "this can give a purpose to a life that otherwise feels aimless"
              }
            },
            {
              "number": 20,
              "prompt": "Stamp collecting may be _______ because it provides facts about different countries.",
              "answer": [
                "educational"
              ],
              "wordLimit": 1,
              "explanation": "Another potential reason for collecting is its educational value.",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "another potential reason for it – or, perhaps, a result of collecting – is its educational value"
              }
            },
            {
              "number": 21,
              "prompt": "_______ tends to be mostly a male hobby.",
              "answer": [
                "Trainspotting"
              ],
              "wordLimit": 1,
              "explanation": "A popular form of collecting particularly among boys and men was trainspotting.",
              "evidence": {
                "sectionId": "p2",
                "ref": "6",
                "quote": "a popular form of collecting, particularly among boys and men, was trainspotting"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "true_false_notgiven",
          "label": "Questions 22–26",
          "instructions": "Do the following statements agree with the information given in the passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 22,
              "prompt": "The number of people buying dolls has grown over the centuries.",
              "answer": "NOT GIVEN",
              "explanation": "The passage discusses doll collectors’ interests but not the number of buyers.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "people who collect dolls may go beyond simply enlarging their collection"
              }
            },
            {
              "number": 23,
              "prompt": "Sixteenth century European dolls were normally made of wax and porcelain.",
              "answer": "FALSE",
              "explanation": "Wood was standard in 16th century Europe; wax and porcelain came later.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "the wood that was standard in 16th century Europe, through the wax and porcelain of later centuries"
              }
            },
            {
              "number": 24,
              "prompt": "Arranging a stamp collection by the size of the stamps is less common than other methods.",
              "answer": "NOT GIVEN",
              "explanation": "The passage mentions methods like country or subject but does not mention size or compare frequency.",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "organising their collection according to certain commonplace principles – perhaps by country in alphabetical order, or grouping stamps by what they depict"
              }
            },
            {
              "number": 25,
              "prompt": "Someone who collects unusual objects may want others to think he or she is also unusual.",
              "answer": "TRUE",
              "explanation": "Collecting unexpected things may convey the belief that the collector must be interesting.",
              "evidence": {
                "sectionId": "p2",
                "ref": "9",
                "quote": "Someone who decides to collect something as unexpected as dog collars, for instance, may be conveying their belief that they must be interesting themselves"
              }
            },
            {
              "number": 26,
              "prompt": "Collecting gives a feeling that other hobbies are unlikely to inspire.",
              "answer": "TRUE",
              "explanation": "Collecting can give a strong sense of personal fulfilment beyond what most other hobbies offer.",
              "evidence": {
                "sectionId": "p2",
                "ref": "10",
                "quote": "More than most other hobbies, collecting can be totally engrossing, and can give a strong sense of personal fulfilment"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "What’s the purpose of gaining knowledge?",
      "passage": [
        {
          "ref": "A",
          "text": "‘I would found an institution where any person can find instruction in any subject.’ That was the founder’s motto for Cornell University, and it seems an apt characterization of the different university, also in the USA, where I currently teach philosophy. A student can prepare for a career in resort management, engineering, interior design, accounting, music, law enforcement, you name it. But what would the founders of these two institutions have thought of a course called ‘Arson for Profit’? I kid you not: we have it on the books. Any undergraduates who have met the academic requirements can sign up for the course in our program in ‘fire science’."
        },
        {
          "ref": "B",
          "text": "Naturally, the course is intended for prospective arson investigators, who can learn all the tricks of the trade for detecting whether a fire was deliberately set, discovering who did it, and establishing a chain of evidence for effective prosecution in a court of law. But wouldn’t this also be the perfect course for prospective arsonists to sign up for? My point is not to criticize academic programs in fire science: they are highly welcome as part of the increasing professionalization of this and many other occupations. However, it’s not unknown for a firefighter to torch a building. This example suggests how dishonest and illegal behavior, with the help of higher education, can creep into every aspect of public and business life."
        },
        {
          "ref": "C",
          "text": "I realized this anew when I was invited to speak before a class in marketing, which is another of our degree programs. The regular instructor is a colleague who appreciates the kind of ethical perspective. I can bring as a philosopher. There are endless ways I could have approached this assignment, but I took my cue from the title of the course: ‘Principles of Marketing’. It made me think to ask the students, ‘Is marketing principled?’ After all, a subject matter can have principles in the sense of being codified, having rules, as with football or chess, without being principled in the sense of being ethical. Many of the students immediately assumed that the answer to my question about marketing principles was obvious: no. Just look at the ways in which everything under the sun has been marketed; obviously it need not to be done in a principled (=ethical) fashion."
        },
        {
          "ref": "D",
          "text": "Is that obvious? I made the suggestion, which may sound downright crazy in light of the evidence, that perhaps marketing is by definition principled. My inspiration for this judgement is the philosopher Immanuel Kant, who argued that any body of knowledge consists of an end (or purpose) and a means."
        },
        {
          "ref": "E",
          "text": "Let us apply both the terms ‘means’ and ‘end’ to marketing. The students have signed up for a course in order to learn how to market effectively. But to what end? There seem to be two main attitudes toward that question. One is that the answer is obvious: the purpose of marketing is to sell things and to make money. The other attitude is that the purpose of marketing is irrelevant: Each person comes to the program and course with his or her own plans, and these need not even concern the acquisition of marketing expertise as such. My proposal, which I believe would also be Kant’s, is that neither of these attitudes captures the significance of the end to the means for marketing. A field of knowledge or a professional endeavor is defined by both the means and the end; hence both deserve scrutiny. Students need to study both how to achieve X, and also what X is."
        },
        {
          "ref": "F",
          "text": "=== PAGE 6 === It is at this point that ‘Arson for Profit’ becomes supremely relevant. That course is presumably all about means: how to detect and prosecute criminal activity. It is therefore assumed that the end is good in an ethical sense. When I ask fire science students to articulate the end, or purpose, of their field, they eventually generalize to something like, ‘The safety and welfare of society,’ which seems right. As we have seen, someone could use the very same knowledge of means to achieve a much less noble end such as personal profit via destructive, dangerous, reckless activity. But we would not call that firefighting. We have a separate word for it: arson. Similarly, if you employed the ‘principles of marketing’ is an unprincipled way, you would not be doing marketing. We have another term for it: fraud. Kant gives the example of a doctor and a poisoner, who use the identical knowledge to achieve their divergent ends. We would say that one is practicing medicine, the other, murder."
        }
      ],
      "groups": [
        {
          "id": "g5",
          "type": "matching",
          "label": "Questions 27–32",
          "instructions": "The Reading Passage has six sections, A–F. Choose the correct heading for each section from the list of headings below.",
          "options": [
            {
              "key": "i",
              "text": "Courses that require a high level of commitment"
            },
            {
              "key": "ii",
              "text": "A course title with two meanings"
            },
            {
              "key": "iii",
              "text": "The equal importance of two key issues"
            },
            {
              "key": "iv",
              "text": "Applying a theory in an unexpected context"
            },
            {
              "key": "v",
              "text": "The financial benefits of studying"
            },
            {
              "key": "vi",
              "text": "A surprising course title"
            },
            {
              "key": "vii",
              "text": "Different names for different outcomes"
            },
            {
              "key": "viii",
              "text": "The possibility of attracting the wrong kind of student"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Section A",
              "answer": "vi",
              "explanation": "Section A introduces the surprising course title ‘Arson for Profit’.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "what would the founders of these two institutions have thought of a course called ‘Arson for Profit’"
              }
            },
            {
              "number": 28,
              "prompt": "Section B",
              "answer": "viii",
              "explanation": "Section B raises the concern that arsonists could enrol in the arson-investigation course.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "wouldn’t this also be the perfect course for prospective arsonists to sign up for"
              }
            },
            {
              "number": 29,
              "prompt": "Section C",
              "answer": "ii",
              "explanation": "Section C discusses ‘Principles of Marketing’ which has two meanings: codified rules and ethical principles.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "a subject matter can have principles in the sense of being codified … without being principled in the sense of being ethical"
              }
            },
            {
              "number": 30,
              "prompt": "Section D",
              "answer": "iv",
              "explanation": "Section D applies Kant’s theory of means and ends to the unexpected context of marketing.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "My inspiration for this judgement is the philosopher Immanuel Kant, who argued that any body of knowledge consists of an end (or purpose) and a means"
              }
            },
            {
              "number": 31,
              "prompt": "Section E",
              "answer": "iii",
              "explanation": "Section E argues that both means (how to market) and end (what marketing is for) deserve equal scrutiny.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "A field of knowledge or a professional endeavor is defined by both the means and the end; hence both deserve scrutiny"
              }
            },
            {
              "number": 32,
              "prompt": "Section F",
              "answer": "vii",
              "explanation": "Section F shows that the same knowledge used for different ends produces different names: firefighting vs arson, marketing vs fraud.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "We have a separate word for it: arson. Similarly, if you employed the ‘principles of marketing’ in an unprincipled way, you would not be doing marketing. We have another term for it: fraud"
              }
            }
          ]
        },
        {
          "id": "g6",
          "type": "short_answer",
          "label": "Questions 33–36",
          "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "summaryTitle": "The ‘Arson for Profit’ course",
          "summaryText": "This is a university course intended for students who are undergraduates and who are studying {33}. The expectation is that they will become {34} specialising in arson. The course will help them to detect cases of arson and find {35} of criminal intent, leading to successful {36} in the courts.",
          "questions": [
            {
              "number": 33,
              "prompt": "",
              "answer": [
                "fire science"
              ],
              "wordLimit": 2,
              "explanation": "Students in the program in fire science.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "our program in ‘fire science’"
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": [
                "investigators"
              ],
              "wordLimit": 2,
              "explanation": "Prospective arson investigators.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "the course is intended for prospective arson investigators"
              }
            },
            {
              "number": 35,
              "prompt": "",
              "answer": [
                "evidence"
              ],
              "wordLimit": 2,
              "explanation": "Establishing a chain of evidence for prosecution.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "establishing a chain of evidence for effective prosecution in a court of law"
              }
            },
            {
              "number": 36,
              "prompt": "",
              "answer": [
                "prosecution"
              ],
              "wordLimit": 2,
              "explanation": "Leading to effective prosecution in a court of law.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "establishing a chain of evidence for effective prosecution in a court of law"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "yes_no_notgiven",
          "label": "Questions 37–40",
          "instructions": "Do the following statements agree with the views of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 37,
              "prompt": "It is difficult to attract students onto courses that do not focus on a career.",
              "answer": "NOT GIVEN",
              "explanation": "The writer does not discuss difficulty in attracting students to non-vocational courses.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "A student can prepare for a career in resort management, engineering, interior design, accounting, music, law enforcement, you name it"
              }
            },
            {
              "number": 38,
              "prompt": "The ‘Arson for Profit’ course would be useful for people intending to set fire to buildings.",
              "answer": "YES",
              "explanation": "The writer says the course would be the perfect course for prospective arsonists.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "wouldn’t this also be the perfect course for prospective arsonists to sign up for"
              }
            },
            {
              "number": 39,
              "prompt": "Fire science courses are too academic to help people to be good at the job of firefighting.",
              "answer": "NO",
              "explanation": "The writer says fire science courses are highly welcome as part of professionalisation; they do not say the courses are too academic.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "My point is not to criticize academic programs in fire science: they are highly welcome as part of the increasing professionalization"
              }
            },
            {
              "number": 40,
              "prompt": "The writer’s fire science students provided a detailed definition of the purpose of their studies.",
              "answer": "NO",
              "explanation": "Students only eventually generalised to something like ‘the safety and welfare of society’ – vague, not detailed.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "they eventually generalize to something like, ‘The safety and welfare of society,’ which seems right"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c12t1r$,
  true
);
