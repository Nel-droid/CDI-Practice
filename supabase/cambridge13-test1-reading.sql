DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 13',
  'Test 1',
  'academic',
  3600,
  $c13t1r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Case Study: Tourism New Zealand Website",
      "passage": [
        {
          "ref": "1",
          "text": "New Zealand is a small country of four million inhabitants, a long-haul flight from all the major tourist-generating markets of the world. Tourism currently makes up 9% of the country's gross domestic product, and is the country’s largest export sector. Unlike other export sectors, which make products and then sell them overseas, tourism brings its customers to New Zealand. The product is the country itself — the people, the places and the experiences. In 1999, Tourism New Zealand launched a campaign to communicate a new brand position to the world. The campaign focused on New Zealand's scenic beauty, exhilarating outdoor activities and authentic Maori culture, and it made New Zealand one of the strongest national brands in the world."
        },
        {
          "ref": "2",
          "text": "A key feature of the campaign was the website newzealand.com, which provided potential visitors to New Zealand with a single gateway to everything the destination had to offer. The heart of the website was a database of tourism services operators, both those based in New Zealand and those based abroad which offered tourism service to the country. Any tourism-related business could be listed by filling in a simple form. This meant that even the smallest bed and breakfast address or specialist activity provider could gain a web presence with access to an audience of long-haul visitors. In addition, because participating businesses were able to update the details they gave on a regular basis, the information provided remained accurate. And to maintain and improve standards, Tourism New Zealand organised a scheme whereby organisations appearing on the website underwent an independent evaluation against a set of agreed national standards of quality. As part of this, the effect of each business on the environment was considered."
        },
        {
          "ref": "3",
          "text": "To communicate the New Zealand experience, the site also carried features relating to famous people and places. One of the most popular was an interview with former New Zealand All Blacks rugby captain Tana Umaga. Another feature that attracted a lot of attention was an interactive journey through a number of the locations chosen for blockbuster films which had made use of New Zealand's stunning scenery as a backdrop. As the site developed, additional features were added to help independent travelers devise their own customised itineraries. To make it easier to plan motoring holidays, the site catalogued the most popular driving routes in the country, highlighting different routes according to the season and indicating distances and times. Later, a Travel Planner feature was added, which allowed visitors to click and ‘bookmark’ places or attractions they were interested in, and then view the results on a map. The Travel Planner offered suggested routes and public transport options between the chosen locations. There were also links to accommodation in the area. By registering with the website, users could save their Travel Plan and return to it later, or print it out to take on the visit. The website also had a ‘Your Words’ section where anyone could submit a blog of their New Zealand travels for possible inclusion on the website."
        },
        {
          "ref": "4",
          "text": "The Tourism New Zealand website won two Webby awards for online achievement and innovation. More importantly perhaps, the growth of tourism to New Zealand was impressive. Overall tourism expenditure increased by an average of 6.9% per year between 1999 and 2004. From Britain, visits to New Zealand grew at an average annual rate of 13% between 2002 and 2006, compared to a rate of 4% overall for British visits abroad."
        },
        {
          "ref": "5",
          "text": "The website was set up to allow both individuals and travel organisations to create itineraries and travel packages to suit their own needs and interests. On the website, visitors can search for activities not solely by geographical location, but also by the particular nature of the activity. This is important as research shows that activities are the key driver of visitor satisfaction, contributing 74% to visitor satisfaction, while transport and accommodation account for the remaining 26%. The more activities that visitors undertake, the more satisfied they will be. It has also been found that visitors enjoy cultural activities most when they are interactive, such as visiting a marae (meeting ground) to learn about traditional Maori life. Many long-haul travelers enjoy such learning experiences, which provide them with stories to take home to their friends and family. In addition, it appears that visitors to New Zealand don't want to be ‘one of the crowd’ and find activities that involve only a few people more special and meaningful."
        },
        {
          "ref": "6",
          "text": "It could be argued that New Zealand is not a typical destination. New Zealand is a small country with a visitor economy composed mainly of small businesses. It is generally perceived as a safe English-speaking country with a reliable transport infrastructure. Because of the long-haul flight, most visitors stay for longer (average 20 days) and want to see as much of the country as possible on what is often seen as a once-in-a-lifetime visit. However, the underlying lessons apply anywhere — the effectiveness of a strong brand, a strategy based on unique experiences and a comprehensive and user-friendly website."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "Section of website",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Database of tourism services"
            },
            {
              "kind": "static",
              "text": "easy for tourism-related businesses to get on the list"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "subheader",
              "text": "Special features on local topics"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "subheader",
              "text": "Information on driving routes"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "Travel Planner"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "'Your Words'"
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "allowed businesses to _______ regularly",
              "answer": [
                "update"
              ],
              "wordLimit": 1,
              "explanation": "Participating businesses were able to update the details they gave on a regular basis.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "because participating businesses were able to update the details they gave on a regular basis"
              }
            },
            {
              "number": 2,
              "prompt": "provided a country-wide evaluation of businesses, including their impact on the _______",
              "answer": [
                "environment"
              ],
              "wordLimit": 1,
              "explanation": "The scheme evaluated organisations including the effect of each business on the environment.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "the effect of each business on the environment was considered"
              }
            },
            {
              "number": 3,
              "prompt": "e.g. an interview with a former sports _______",
              "answer": [
                "captain"
              ],
              "wordLimit": 1,
              "explanation": "One popular feature was an interview with former All Blacks rugby captain Tana Umaga.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "an interview with former New Zealand All Blacks rugby captain Tana Umaga"
              }
            },
            {
              "number": 4,
              "prompt": "an interactive tour of various locations used in _______",
              "answer": [
                "films"
              ],
              "wordLimit": 1,
              "explanation": "An interactive journey through locations chosen for blockbuster films.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "an interactive journey through a number of the locations chosen for blockbuster films"
              }
            },
            {
              "number": 5,
              "prompt": "varied depending on the _______",
              "answer": [
                "season"
              ],
              "wordLimit": 1,
              "explanation": "Routes were highlighted according to the season.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "highlighting different routes according to the season"
              }
            },
            {
              "number": 6,
              "prompt": "included a map showing selected places, details of public transport and local _______",
              "answer": [
                "accommodation"
              ],
              "wordLimit": 1,
              "explanation": "The Travel Planner offered routes and transport options, plus links to accommodation.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "There were also links to accommodation in the area"
              }
            },
            {
              "number": 7,
              "prompt": "travelers could submit a _______ of their New Zealand travels for possible inclusion on the website",
              "answer": [
                "blog"
              ],
              "wordLimit": 1,
              "explanation": "The 'Your Words' section let anyone submit a blog of their travels.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "anyone could submit a blog of their New Zealand travels for possible inclusion on the website"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "true_false_notgiven",
          "label": "Questions 8–13",
          "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 8,
              "prompt": "The website www.newzealand.com aimed to provide ready-made itineraries and packages for travel companies and individual tourists.",
              "answer": "FALSE",
              "explanation": "The website allowed users to CREATE their own itineraries, not provide ready-made ones.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "The website was set up to allow both individuals and travel organisations to create itineraries and travel packages to suit their own needs and interests"
              }
            },
            {
              "number": 9,
              "prompt": "It was found that most visitors started searching on the website by geographical location.",
              "answer": "NOT GIVEN",
              "explanation": "The passage says visitors CAN search by location or activity type, but does not state what most visitors actually do first.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "visitors can search for activities not solely by geographical location, but also by the particular nature of the activity"
              }
            },
            {
              "number": 10,
              "prompt": "According to research, 26% of visitor satisfaction is related to their accommodation.",
              "answer": "FALSE",
              "explanation": "The 26% covers both transport AND accommodation together, not accommodation alone.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "transport and accommodation account for the remaining 26%"
              }
            },
            {
              "number": 11,
              "prompt": "Visitors to New Zealand like to become involved in the local culture.",
              "answer": "TRUE",
              "explanation": "Visitors enjoy cultural activities most when they are interactive, such as learning about traditional Maori life.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "visitors enjoy cultural activities most when they are interactive, such as visiting a marae (meeting ground) to learn about traditional Maori life"
              }
            },
            {
              "number": 12,
              "prompt": "Visitors like staying in small hotels in New Zealand rather than in larger ones.",
              "answer": "NOT GIVEN",
              "explanation": "The passage mentions small businesses but says nothing about preferences for small vs large hotels.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "even the smallest bed and breakfast address or specialist activity provider could gain a web presence"
              }
            },
            {
              "number": 13,
              "prompt": "Many visitors feel it is unlikely that they will return to New Zealand after their visit.",
              "answer": "TRUE",
              "explanation": "The visit is often seen as a once-in-a-lifetime trip.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "what is often seen as a once-in-a-lifetime visit"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "Why Being Bored Is Stimulating — and Useful, Too",
      "passage": [
        {
          "ref": "1",
          "text": "This most common of emotions is turning out to be more interesting than we thought A We all know how it feels — it’s impossible to keep your mind on anything, time stretches out, and all the things you could do seem equally unlikely to make you feel better. But defining boredom so that it can be studied in the lab has proved difficult. For a start, it can include a lot of other mental states, such as frustration, apathy, depression and indifference. There isn't even agreement over whether boredom is always a low-energy, flat kind of emotion or whether feeling agitated and restless counts as boredom, too. In his book, Boredom: A Lively History, Peter Toohey at the University of Calgary, Canada, compares it to disgust - an emotion that motivates us to stay away from certain situations. ‘If disgust protects humans from infection, boredom may protect them from “infectious” social situations,’ he suggests."
        },
        {
          "ref": "2",
          "text": "115]"
        },
        {
          "ref": "3",
          "text": "By asking people about their experiences of boredom, Thomas Goetz and his team at the University of Konstanz in Germany have recently identified five distinct types: indifferent, calibrating, searching, reactant and apathetic. These can be plotted on two axes — one running left to right, which measures low to high arousal, and the other from top to bottom, which measures how positive or negative the feeling is. Intriguingly, Goetz has found that while people experience all kinds of boredom, they tend to specialise in one. Of the five types, the most damaging is ‘reactant’ boredom with its explosive combination of high arousal and negative emotion. The most useful is what Goetz calls ‘indifferent’ boredom: someone isn’t engaged in anything satisfying but still feels relaxed and calm. However, it remains to be seen whether there are any character traits that predict the kind of boredom each of us might be prone to."
        },
        {
          "ref": "4",
          "text": "Psychologist Sandi Mann at the University of Central Lancashire, UK, goes further. ‘All emotions are there for a reason, including boredom,’ she says. Mann has found that being bored makes us more creative. ‘We're all afraid of being bored but in actual fact it can lead to all kinds of amazing things,’ she says. In experiments published last year, Mann found that people who had been made to feel bored by copying numbers out of the phone book for 15 minutes came up with more creative ideas about how to use a polystyrene cup than a control group. Mann concluded that a passive, boring activity is best for creativity because it allows the mind to wander. In fact, she goes so far as to suggest that we should seek out more boredom in our lives."
        },
        {
          "ref": "5",
          "text": "D Psychologist John Eastwood at York University in Toronto, Canada, isn't convinced. ‘If you are ina state of mind-wandering you are not bored,’ he says. ‘In my view, by definition boredom is an undesirable state.’ That doesn't necessarily mean that it isn't adaptive, he adds. ‘Pain is adaptive — if we didn't have physical pain, bad things would happen to us. Does that mean that we should actively cause pain? No. But even if boredom has evolved to help us survive, it can still be toxic if allowed to fester.’ For Eastwood, the central feature of boredom is a failure to put our ‘attention system’ into gear. This causes an inability to focus on anything, which makes time seem to go painfully slowly. What's more, your efforts to improve the situation can end up making you feel worse. ‘People try to connect with the world and if they are not successful there’s that frustration and irritability,’ he says. Perhaps most worryingly, says Eastwood, repeatedly failing to engage attention can lead to state where we don’t know what to do any more, and no longer care."
        },
        {
          "ref": "6",
          "text": "Eastwood's team is now trying to explore why the attention system fails. It's early days but they think that at least some of it comes down to personality. Boredom proneness has been linked with a variety of traits. People who are motivated by pleasure seem to suffer particularly badly. Other personality traits, such as curiosity, are associated with a high boredom threshold. More evidence that boredom has detrimental effects comes from studies of people who are more or less prone to boredom. It seems those who bore easily face poorer prospects in education, their career and even life in general. But of course, boredom itself cannot kill — it’s the things we do to deal with it that may put us in danger. What can we do to alleviate it before it comes to that? Goetz’s group has one suggestion. Working with teenagers, they found that those who ‘approach’ a boring situation — in other words, see that it’s boring and get stuck in anyway — report less boredom than those who try to avoid it by using snacks, TV or social media for distraction."
        },
        {
          "ref": "7",
          "text": "Psychologist Francoise Wemelsfelder speculates that our over-connected lifestyles might even be a new source of boredom. ‘In modern human society there is a lot of overstimulation but still a lot of problems finding meaning,’ she says. So instead of seeking yet more mental stimulation, perhaps we should leave our phones alone, and use boredom to motivate us to engage with the world ina more meaningful way."
        }
      ],
      "groups": [
        {
          "id": "g3",
          "type": "matching",
          "label": "Questions 14–19",
          "instructions": "The Reading Passage has six paragraphs, A–F. Choose the correct heading for each paragraph from the list of headings below.",
          "options": [
            {
              "key": "i",
              "text": "The productive outcomes that may result from boredom"
            },
            {
              "key": "ii",
              "text": "What teachers can do to prevent boredom"
            },
            {
              "key": "iii",
              "text": "A new explanation and a new cure for boredom"
            },
            {
              "key": "iv",
              "text": "Problems with a scientific approach to boredom"
            },
            {
              "key": "v",
              "text": "A potential danger arising from boredom"
            },
            {
              "key": "vi",
              "text": "Creating a system of classification for feelings of boredom"
            },
            {
              "key": "vii",
              "text": "Age groups most affected by boredom"
            },
            {
              "key": "viii",
              "text": "Identifying those most affected by boredom"
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "Paragraph A",
              "answer": "iv",
              "explanation": "Paragraph A discusses how defining boredom scientifically has proved difficult.",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "defining boredom so that it can be studied in the lab has proved difficult"
              }
            },
            {
              "number": 15,
              "prompt": "Paragraph B",
              "answer": "vi",
              "explanation": "Paragraph B describes Goetz's classification of five distinct types of boredom.",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "Thomas Goetz and his team at the University of Konstanz in Germany have recently identified five distinct types: indifferent, calibrating, searching, reactant and apathetic"
              }
            },
            {
              "number": 16,
              "prompt": "Paragraph C",
              "answer": "i",
              "explanation": "Paragraph C shows that boredom can lead to creative outcomes.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Mann has found that being bored makes us more creative"
              }
            },
            {
              "number": 17,
              "prompt": "Paragraph D",
              "answer": "v",
              "explanation": "Paragraph D warns that boredom can be toxic and damage wellbeing.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "even if boredom has evolved to help us survive, it can still be toxic if allowed to fester"
              }
            },
            {
              "number": 18,
              "prompt": "Paragraph E",
              "answer": "viii",
              "explanation": "Paragraph E identifies personality traits that predict who suffers most from boredom.",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "those who bore easily face poorer prospects in education, their career and even life in general"
              }
            },
            {
              "number": 19,
              "prompt": "Paragraph F",
              "answer": "iii",
              "explanation": "Paragraph F proposes that over-connected lifestyles are a new source of boredom, and suggests seeking meaning as a cure.",
              "evidence": {
                "sectionId": "p2",
                "ref": "6",
                "quote": "our over-connected lifestyles might even be a new source of boredom"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "matching",
          "label": "Questions 20–23",
          "instructions": "Look at the following people and the list of ideas below. Match each person with the correct idea, A–E.",
          "options": [
            {
              "key": "A",
              "text": "The way we live today may encourage boredom."
            },
            {
              "key": "B",
              "text": "One sort of boredom is worse than all the others."
            },
            {
              "key": "C",
              "text": "Levels of boredom may fall in the future."
            },
            {
              "key": "D",
              "text": "Trying to cope with boredom can increase its negative effects."
            },
            {
              "key": "E",
              "text": "Boredom may encourage us to avoid an unpleasant experience."
            }
          ],
          "questions": [
            {
              "number": 20,
              "prompt": "Peter Toohey",
              "answer": "E",
              "explanation": "Toohey compares boredom to disgust — an emotion that keeps us away from certain situations.",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "boredom may protect them from \"infectious\" social situations"
              }
            },
            {
              "number": 21,
              "prompt": "Thomas Goetz",
              "answer": "B",
              "explanation": "Goetz identified 'reactant' boredom as the most damaging type.",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "the most damaging is 'reactant' boredom with its explosive combination of high arousal and negative emotion"
              }
            },
            {
              "number": 22,
              "prompt": "John Eastwood",
              "answer": "D",
              "explanation": "Eastwood says efforts to improve the boredom situation can make things worse.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "your efforts to improve the situation can end up making you feel worse"
              }
            },
            {
              "number": 23,
              "prompt": "Francoise Wemelsfelder",
              "answer": "A",
              "explanation": "Wemelsfelder speculates that over-connected modern lifestyles may be a new source of boredom.",
              "evidence": {
                "sectionId": "p2",
                "ref": "6",
                "quote": "our over-connected lifestyles might even be a new source of boredom"
              }
            }
          ]
        },
        {
          "id": "g5",
          "type": "short_answer",
          "label": "Questions 24–26",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "summaryTitle": "Responses to boredom",
          "summaryText": "For John Eastwood, the central feature of boredom is that people cannot {24}, due to a failure in what he calls the 'attention system', and as a result they become frustrated and irritable. His team suggests that those for whom {25} is an important aim in life may have problems in coping with boredom, whereas those who have the characteristic of {26} can generally cope with it.",
          "questions": [
            {
              "number": 24,
              "prompt": "",
              "answer": [
                "focus"
              ],
              "wordLimit": 1,
              "explanation": "Eastwood says boredom causes an inability to focus on anything.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "This causes an inability to focus on anything"
              }
            },
            {
              "number": 25,
              "prompt": "",
              "answer": [
                "pleasure"
              ],
              "wordLimit": 1,
              "explanation": "People motivated by pleasure seem to suffer particularly badly from boredom.",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "People who are motivated by pleasure seem to suffer particularly badly"
              }
            },
            {
              "number": 26,
              "prompt": "",
              "answer": [
                "curiosity"
              ],
              "wordLimit": 1,
              "explanation": "Curiosity is associated with a high boredom threshold.",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "Other personality traits, such as curiosity, are associated with a high boredom threshold"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "Artificial Artist?",
      "passage": [
        {
          "ref": "1",
          "text": "The Painting Fool is one of a growing number of computer programs which, so their makers claim, possess creative talents. Classical music by an artificial composer has had audiences enraptured, and even tricked them into believing a human was behind the score. Artworks painted by a robot have sold for thousands of dollars and been hung in prestigious galleries. And software has been built which creates art that could not have been imagined by the programmer."
        },
        {
          "ref": "2",
          "text": "Human beings are the only species to perform sophisticated creative acts regularly. If we can break this process down into computer code, where does that leave human creativity? ‘This is a question at the very core of humanity,’ says Geraint Wiggins, a computational creativity researcher at Goldsmiths, University of London. ‘It scares a lot of people. They are worried that it is taking something special away from what it means to be human.’ To some extent, we are all familiar with computerised art. The question is: where does the work of the artist stop and the creativity of the computer begin? Consider one of the oldest machine artists, Aaron, a robot that has had paintings exhibited in London's Tate Modern and the San Francisco Museum of Modern Art. Aaron can pick up a paintbrush and paint on canvas on its own. Impressive perhaps, but it is still little more than a tool to realise the programmer's own creative ideas. Simon Colton, the designer of the Painting Fool, is keen to make sure his creation doesn’t attract the same criticism. Unlike earlier ‘artists’ such as Aaron, the Painting Fool only needs minimal direction and can come up with its own concepts by going online for material. The software runs its own web searches and trawls through social media sites. It is now beginning to display a kind of imagination too, creating pictures from scratch. One of its original works is a series of fuzzy landscapes, depicting trees and sky. While some might say they have a mechanical look, Colton argues that such reactions arise from people's double standards towards software-produced and human-produced art. After all, he says, consider that the Painting Fool painted the landscapes without referring to a photo. ‘If a child painted a new scene from its head, you'd say it has a certain level of imagination,’ he points out. ‘The same should be true of a machine.’ Software bugs can also lead to unexpected results. Some of the Painting Fool's paintings of a chair came out in black and white, thanks to a technical glitch. This gives the work an eerie, ghostlike quality. Human artists like the renowned Ellsworth Kelly are lauded for limiting their colour palette —- so why should computers be any different?"
        },
        {
          "ref": "3",
          "text": "Researchers like Colton don’t believe it is right to measure machine creativity directly to that of humans who ‘have had millennia to develop our skills’. Others, though, are fascinated by the prospect that a computer might create something as original and subtle as our best artists. So far, only one has come close. Composer David Cope invented a program called Experiments in Musical Intelligence, or EMI. Not only did EMI create compositions in Cope’s style, but also that of the most revered classical composers, including Bach, Chopin and Mozart. Audiences were moved to tears, and EMI even fooled classical music experts into thinking they were hearing genuine Bach. Not everyone was impressed however. Some, such as Wiggins, have blasted Cope’s work as pseudoscience, and condemned him for his deliberately vague explanation of how the software worked. Meanwhile, Douglas Hofstadter of Indiana University said EMI created replicas which still rely completely on the original artist's creative impulses. When audiences found out the truth they were often outraged with Cope, and one music lover even tried to punch him. Amid such controversy, Cope destroyed EMI's vital databases."
        },
        {
          "ref": "4",
          "text": "But why did so many people love the music, yet recoil when they discovered how it was composed?"
        },
        {
          "ref": "5",
          "text": "A study by computer scientist David Moffat of Glasgow Caledonian University provides a clue. He asked both expert musicians and non-experts to assess six compositions. The participants weren't told beforehand whether the tunes were composed by humans or computers, but were asked to guess, and then rate how much they liked each one. People who thought the composer was a computer tended to dislike the piece more than those who believed it was human. This was true even among the experts, who might have been expected to be more objective in their analyses. Where does this prejudice come from? Paul Bloom of Yale University has a suggestion: he reckons part of the pleasure we get from art stems from the creative process behind the work. This can give it an ‘irresistible essence’, says Bloom. Meanwhile, experiments by Justin Kruger of New York University have shown that people's enjoyment of an artwork increases if they think more time and effort was needed to create it. Similarly, Colton thinks that when people experience art, they wonder what the artist might have been thinking or what the artist is trying to tell them. It seems obvious, therefore, that with computers producing art, this speculation is cut short — there's nothing to explore. But as technology becomes increasingly complex, finding those greater depths in computer art could become possible. This is precisely why Colton asks the Painting Fool to tap into online social networks for its inspiration: hopefully this way it will choose themes that will already be meaningful to us."
        }
      ],
      "groups": [
        {
          "id": "g6",
          "type": "multiple_choice",
          "label": "Questions 27–31",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 27,
              "prompt": "What is the writer suggesting about computer-produced works in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "People's acceptance of them can vary considerably."
                },
                {
                  "key": "B",
                  "text": "A great deal of progress has already been attained in this field."
                },
                {
                  "key": "C",
                  "text": "They have had more success in some artistic genres than in others."
                },
                {
                  "key": "D",
                  "text": "The advances are not as significant as the public believes them to be."
                }
              ],
              "answer": "B",
              "explanation": "The opening paragraph lists multiple computer art achievements across different art forms.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "The Painting Fool is one of a growing number of computer programs which, so their makers claim, possess creative talents"
              }
            },
            {
              "number": 28,
              "prompt": "According to Geraint Wiggins, why are many people worried by computer art?",
              "options": [
                {
                  "key": "A",
                  "text": "It is aesthetically inferior to human art."
                },
                {
                  "key": "B",
                  "text": "It may ultimately supersede human art."
                },
                {
                  "key": "C",
                  "text": "It undermines a fundamental human quality."
                },
                {
                  "key": "D",
                  "text": "It will lead to a deterioration in human ability."
                }
              ],
              "answer": "C",
              "explanation": "Wiggins says people are worried it is taking something special away from what it means to be human.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "They are worried that it is taking something special away from what it means to be human"
              }
            },
            {
              "number": 29,
              "prompt": "What is a key difference between Aaron and the Painting Fool?",
              "options": [
                {
                  "key": "A",
                  "text": "Its programmer's background."
                },
                {
                  "key": "B",
                  "text": "Public response to its work."
                },
                {
                  "key": "C",
                  "text": "The source of its subject matter."
                },
                {
                  "key": "D",
                  "text": "The technical standard of its output."
                }
              ],
              "answer": "C",
              "explanation": "The Painting Fool goes online for its own material, whereas Aaron relies on the programmer's ideas.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "the Painting Fool only needs minimal direction and can come up with its own concepts by going online for material"
              }
            },
            {
              "number": 30,
              "prompt": "What point does Simon Colton make in the fourth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Software-produced art is often dismissed as childish and simplistic."
                },
                {
                  "key": "B",
                  "text": "The same concepts of creativity should not be applied to all forms of art."
                },
                {
                  "key": "C",
                  "text": "It is unreasonable to expect a machine to be as imaginative as a human being."
                },
                {
                  "key": "D",
                  "text": "People tend to judge computer art and human art according to different criteria."
                }
              ],
              "answer": "D",
              "explanation": "Colton argues that negative reactions arise from people's double standards towards software-produced and human-produced art.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "such reactions arise from people's double standards towards software-produced and human-produced art"
              }
            },
            {
              "number": 31,
              "prompt": "The writer refers to the paintings of a chair as an example of computer art which",
              "options": [
                {
                  "key": "A",
                  "text": "achieves a particularly striking effect."
                },
                {
                  "key": "B",
                  "text": "exhibits a certain level of genuine artistic skill."
                },
                {
                  "key": "C",
                  "text": "closely resembles that of a well-known artist."
                },
                {
                  "key": "D",
                  "text": "highlights the technical limitations of the software."
                }
              ],
              "answer": "A",
              "explanation": "The black-and-white glitch gives the chair paintings an eerie, ghostlike quality — a striking effect.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Some of the Painting Fool's paintings of a chair came out in black and white, thanks to a technical glitch. This gives the work an eerie, ghostlike quality"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "matching",
          "label": "Questions 32–37",
          "instructions": "Complete each sentence with the correct ending, A–G below.",
          "options": [
            {
              "key": "A",
              "text": "generating work that was virtually indistinguishable from that of humans."
            },
            {
              "key": "B",
              "text": "knowing whether it was the work of humans or software."
            },
            {
              "key": "C",
              "text": "producing work entirely dependent on the imagination of its creator."
            },
            {
              "key": "D",
              "text": "comparing the artistic achievements of humans and computers."
            },
            {
              "key": "E",
              "text": "revealing the technical details of his program."
            },
            {
              "key": "F",
              "text": "persuading the public to appreciate computer art."
            },
            {
              "key": "G",
              "text": "discovering that it was the product of a computer program."
            }
          ],
          "questions": [
            {
              "number": 32,
              "prompt": "Simon Colton says it is important to avoid",
              "answer": "D",
              "explanation": "Colton says it is not right to measure machine creativity directly against human creativity.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Researchers like Colton don't believe it is right to measure machine creativity directly to that of humans"
              }
            },
            {
              "number": 33,
              "prompt": "David Cope's EMI software surprised people by",
              "answer": "A",
              "explanation": "EMI even fooled classical music experts into thinking they were hearing genuine Bach.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "EMI even fooled classical music experts into thinking they were hearing genuine Bach"
              }
            },
            {
              "number": 34,
              "prompt": "Geraint Wiggins criticised Cope for not",
              "answer": "E",
              "explanation": "Wiggins condemned Cope for his deliberately vague explanation of how the software worked.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "condemned him for his deliberately vague explanation of how the software worked"
              }
            },
            {
              "number": 35,
              "prompt": "Douglas Hofstadter claimed that EMI was",
              "answer": "C",
              "explanation": "Hofstadter said EMI created replicas which still rely completely on the original artist's creative impulses.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Douglas Hofstadter of Indiana University said EMI created replicas which still rely completely on the original artist's creative impulses"
              }
            },
            {
              "number": 36,
              "prompt": "Audiences who had listened to EMI's music became angry after",
              "answer": "G",
              "explanation": "When audiences found out the truth they were often outraged with Cope.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "When audiences found out the truth they were often outraged with Cope"
              }
            },
            {
              "number": 37,
              "prompt": "The participants in David Moffat's study had to assess music without",
              "answer": "B",
              "explanation": "Participants weren't told beforehand whether the tunes were composed by humans or computers.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "The participants weren't told beforehand whether the tunes were composed by humans or computers"
              }
            }
          ]
        },
        {
          "id": "g8",
          "type": "yes_no_notgiven",
          "label": "Questions 38–40",
          "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 38,
              "prompt": "Moffat's research may help explain people's reactions to EMI.",
              "answer": "YES",
              "explanation": "The writer says Moffat's study 'provides a clue' about why people loved the music but recoiled when they found out its origin.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "A study by computer scientist David Moffat of Glasgow Caledonian University provides a clue"
              }
            },
            {
              "number": 39,
              "prompt": "The non-experts in Moffat's study all responded in a predictable way.",
              "answer": "NOT GIVEN",
              "explanation": "The passage describes the general trend but does not confirm all non-experts responded the same way.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "People who thought the composer was a computer tended to dislike the piece more than those who believed it was human"
              }
            },
            {
              "number": 40,
              "prompt": "Justin Kruger's findings cast doubt on Paul Bloom's theory about people's prejudice towards computer art.",
              "answer": "NO",
              "explanation": "Kruger's finding (more effort = more enjoyment) actually supports Bloom's theory (pleasure comes from the creative process).",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "experiments by Justin Kruger of New York University have shown that people's enjoyment of an artwork increases if they think more time and effort was needed to create it"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c13t1r$,
  true
);
