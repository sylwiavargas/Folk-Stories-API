
nina = Person.create!(
name: "Nina Simone",
birth: 1933,
death: 2003,
bio_eng: "Nina Simone (1933-2003) was an American singer, pianist, songwriter. Her early aspirations would be to become a concert pianist, which would lead her to audition at Curtis Institiute of Music in Philadelphia, but was sadly rejected; a decision she felt was based on her race. Later on, she was involved in Civil Rights Movement and performed and spoke at many civil rights meetings, such as at the Selma to Montgomery marches. Simone had always included songs in her repertoire that drew upon her African-American origins. On her debut album, Simone for the first time openly addressed the racial inequality that was prevalent in the United States with the song “Mississippi Goddam”, her response to the murder of Medgar Evers and the Birmingham Church Bombing. The song was released as a single, and it was boycotted in certain southern states. Simone’s legacy was on the airways, in the background telling everyone of the struggles every African-American endured, even if they did not want to learn.",
bio_pl: " ",
quote_eng: “I know I’m different, but I don’t think about it.”,
quote_pl: " ",
read_more_eng: "https://www.blackhistorymonth.org.uk/article/section/bhm-heroes/nina-simone-singer-songwriter-civil-rights-campaigner/",
read_more_pl: "https://pl.wikipedia.org/wiki/Nina_Simone",
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Nina_Simone_%281965%29.jpg/180px-Nina_Simone_%281965%29.jpg"
)

barbados = Place.create!(name_eng: "Barbados", name_pl: "Barbados", zip: BB15028, country_id: usa.id, latitude: 13.193887, longitude: -59.543198)
barb_country = Country.create!(name_eng: "Barbados", name_pl: "Barbados", continent_id: north_am.id)
julliard = Place.create!(name_eng: "Julliard School", name_pl: "Julliard School", zip: "10023", country_id: usa.id, latitude: 40.773871, longitude: 40.773871 -73.983178)

Cp.create!(country_id: usa.id, person_id: nina.id)
Cp.create!(country_id: barbados.id, person_id: nina.id)
Pp.create!(place_id: julliard.id, person_id: nina.id, description: "Nina Simone studied classical piano at Julliard School")
Pp.create!(place_id: barbabos.id, person_id: nina.id, description_eng: "Simone left the US in September 1970, flying to Barbados as she was disappointed that she was not making the Hits like she used to. Upon her arrival back to the US, Simone’s previous protest for the country’s involvement in the Vietnam War meant she was issued with a Warrent for her arrest as she had not paid her taxes. To evade the authorities and prosecution, Simone stayed in Barbados for quite some time.")


------------------------------------------

susan = Person.create!(
name: "Susan Sontag",
birth: 1933,
death: 2004,
bio_eng: "Susan Sontag (1933-2004) was an American writer, essayist and human rights activist.",
bio_pl: " ",
quote_eng: "Never worry about being obsessive. I like obsessive people. Obsessive people make great art.",
quote_pl: "Nie przejmuj się, jeśli masz jakąś obsesję. Lubię obsesyjnych ludzi. Obsesyjno ludzie tworzą wspaniałą sztukę.",
read_more_eng: "https://en.wikipedia.org/wiki/Susan_Sontag",
read_more_pl: "https://pl.wikipedia.org/wiki/Susan_Sontag",
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Susan_Sontag_1979_©Lynn_Gilbert_%28headshot%29.jpg"
)
cuny = Place.create!(name_eng: "City University of New York", name_pl: "Uniwersytet Miejski Nowego Jorku", zip: "", country_id: usa.id, latitude: 40.8194, longitude: -73.95)

Cp.create!(country_id: usa.id, person_id: susan.id)
Pp.create!(country_id: cuny.id, person_id: susan.id, description_eng: "Susan Sontag taught philosophy at CUNY from 1960 to 1964")

------------------------------------------

gloria = Person.create!(
name: "Gloria Steinem",
birth: 1934,
death: nil,
bio_eng: "Gloria Steinem (born 1934) is an American feminist, writer and journalist. One of the most important modern feminists, a co-founder of Ms. Magazine and National Women's Political Caucus (NWPC). The National Portrait Gallery selected for its collection a photograph of Dorothy Pitman Hughes and Gloria Steinem sharing a large skirt, each with a raised fist salute to demonstrate feminist solidarity. Gloria Steinem defeated breast cancer.",
bio_pl: " ",
quote_eng: "Feminism has never been about getting a job for one woman. It's about making life more fair for women everywhere. It's not about a piece of the existing pie; there are too many of us for that. It's about baking a new pie.",
quote_pl: "W feminizmie nigdy nie chodziło o to, żeby jedna kobieta otrzymałą pracę. Chodzi w nim o to, żeby życie było bardziej sprawiedliwe dla wszystkich kobiet na całym świecie. Czyli, nie chodzi o to, żeby otrzymać kawałek ciasta - jest nas zbyt wiele, żeby się nim podzielić) - tylko żeby upiec całkiem nowe ciasto.",
read_more_eng: "https://en.wikipedia.org/wiki/Gloria_Steinem",
read_more_pl: "https://pl.wikipedia.org/wiki/Gloria_Steinem",
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Gloria_Steinem_%2829459760190%29_%28cropped%29.jpg")

nwpc = Event.create!(title_eng: "300 women started National Women's Political Caucus (NWPC)", title_pl: "Trzysta Amerykanek założyło w USA National Women's Political Caucus (NWPC)", description_eng: "National Women's Political Caucus (NWPC) was founded by over 300 women including Gloria Steinem, Bella Abzug, Betty Friedan, Shirley Chisholm, and Myrlie Evers-Williams.", description_pl: "Wśród nich były: Gloria Steinem, Bella Abzug, Betty Friedan, Shirley Chisholm i Myrlie Evers-Williams.", mmddyyy: "19710711", year_era_id: 1971, month_id: 7, day_id: 11, month_day_id: 193, read_more_eng: " ", read_more_pl: " ", place_id: nyc.id, country_id: usa.id)

ms = Event.create!(title_eng: "The first Ms. Magazine issue is published!", title_pl: "Pierwsze wydanie Ms. Magazine", description_eng: "Gloria Steinem and Dorothy Pitman Hughes published Ms. Magazine as an insert in New York Magazine. The cover depicts a woman resembling an Indian goddess, with blue skin and eight arms, holding a clock, skillet, typewriter, rake, mirror, telephone, steering wheel, and an iron. 300,000 test copies of the magazine sold out in three days, and generated 26,000 subscription orders within the next few weeks. Gloria Steinem and Letty Cottin Pogrebin co-founded Ms.Magazine in 1972, during the Second-Wave feminist movement. At the time Ms. was first published, much of the feminist movement was driven toward fighting against the social and family-life norms expected of women.", description_pl: " ", mmddyyy: "19711201", year_era_id: 1971, month_id: 12, day_id: 1, month_day_id: 336, read_more_eng: "https://en.wikipedia.org/wiki/Ms._(magazine)", read_more_pl: "https://pl.wikipedia.org/wiki/Ms.", place_id: nyc.id, country_id: usa.id)

Et.create!(event_id: nwpc.id, type_id: 1)
Et.create!(event_id: ms.id, type_id: 1)
Ep.create!(event_id: ms.id, person_id: gloria.id)
Ep.create!(event_id: ms.id, person_id: dorothy.id)

Ep.create!(event_id: nwpc.id, person_id: gloria.id)
Cp.create!(country_id: usa.id, person_id: gloria.id)

----------------------------------------------
dorothy = Person.create!(
name: "Dorothy Pitman Hughes",
birth: 1938,
death: nil,
bio_eng: "Dorothy Pitman Hughes (born 1938) is a feminist, child-welfare advocate, African-American activist, public speaker, author and pioneering African-American small business owner. Her father was beaten when she was ten years old and left for dead on the family's doorstep; the family believes it to be a crime committed by Ku Klux Klan members. Hughes decided as a child in reaction to her family's experiences she would devote her life to improving the circumstances of people through activism. She was a co-founder of Ms. Magazine in 1972. She organized the first shelter for battered women in New York City and co-founded the New York City Agency for Child Development (now the New York City Administration for Children's Services). Hughes also co-founded with Gloria Steinem and others the Women’s Action Alliance in 1971. The two women toured together speaking about gender, class and race throughout the 1970s. She also owned an office supply business in Harlem from 1997 to 2007 and wrote about her experiences in 'Wake Up and Smell the Dollars!' (2011) and 'I'm Just Saying... It Looks Like Ethnic Cleansing (The Gentrification of Harlem)' (2012), advocating small business ownership to other African Americans as a form of empowerment, as well as advising how to avoid potential pitfalls specific to African Americans. The National Portrait Gallery selected for its collection a photograph of Hughes and Steinem sharing a large skirt, each with a raised fist salute to demonstrate feminist solidarity.",
bio_pl: " ",
quote_eng: " ",
quote_pl: " ",
read_more_eng: "https://en.wikipedia.org/wiki/Dorothy_Pitman_Hughes",
read_more_pl: "https://en.wikipedia.org/wiki/Dorothy_Pitman_Hughes",
picture: "http://cdn2.creativecirclemedia.com/folioweekly/original/1502221926_a8e7.jpg")

nycacs = Place.create!(name_eng: "York City Administration for Children's Services", name_pl: "York City Administration for Children's Services", zip: "10038", country_id: usa.id, latitude: 40.708850, longitude: -74.007870)

Cp.create!(country_id: usa.id, person_id: dorothy.id)
Pp.create!(country_id: nycacs.id, person_id: dorothy.id, description_eng: "Dorothy Pitman Hughes co-founded the New York City Agency for Child Development in 1972.")

------------------------------------------
wilma = Person.create!(
  name: "Wilma Pearl Mankiller",
  birth: 1945,
  death: 2010,
  bio_eng: "Wilma Pearl Mankiller (Cherokee name: A-ji-luhsgi Asgaya-dihi) was an American Cherokee activist, social worker, community developer and the first woman elected to serve as Principal Chief of the Cherokee Nation.  Inspired by the social and political movements of the 1960s, Mankiller became involved in the Occupation of Alcatraz and later participated in the land and compensation struggles with the Pit River Tribe. For five years in the early 1970s, she was employed as a social worker, focusing mainly on children's issues. A member of the Democratic Party, Mankiller served as Principal Chief from 1985 to 1995. During her administration, the Cherokee government built new health clinics, created a mobile eye-care clinic, established ambulance services, created early education, and adult education programs; launched job training programs; developed revenue programs, including factories, retail stores, restaurants, and bingo operations; and established self-governance, allowing the tribe to manage its own finances. She was a tireless advocate working to improve the image of Native Americans and diligently worked to combat the misappropriation of native heritage.",
  bio_pl: " ",
  quote_eng: "Growth is a painful process.",
  quote_pl: "Rozwój jest bolesnym procesem.",
  read_more_eng: "https://en.wikipedia.org/wiki/Wilma_Mankiller",
  read_more_pl: "https://en.wikipedia.org/wiki/Wilma_Mankiller",
  picture: "https://en.wikipedia.org/wiki/Wilma_Mankiller#/media/File:WilmaMankillerByPhilKonstantin.jpg")
)


------------------------------------------

hellen = Person.create!(
name: "Hellen Keller",
birth: 1880,
death: 1968,
bio_eng: "Helen Keller (1880-1968) was an American deaf-blind author, pedagogue and political activist. She spoke 5 languages, wrote 12 books and visited 35 countries. Keller became a world-famous speaker and author. She is remembered as an advocate for people with disabilities, amid numerous other causes. The deaf community was widely impacted by her. She traveled to twenty-five different countries giving motivational speeches about Deaf people's conditions. She was a suffragette, pacifist, radical socialist, birth control supporter, and opponent of Woodrow Wilson.",
bio_pl: " ",
quote_eng: "One can never consent to creep when one feels an impulse to soar.",
quote_pl: "Nie możemy zgadzać się na pełzanie, gdy czujemy potrzebę latania.",
read_more_eng: "https://en.wikipedia.org/wiki/Helen_Keller",
read_more_pl: "https://pl.wikipedia.org/wiki/Helen_Keller",
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Hellen_Keller_circa_1920.jpg/187px-Hellen_Keller_circa_1920.jpg"
)

Cp.create!(country_id: usa.id, person_id: hellen.id)


hkd = Event.create!(title_eng: "National Helen Keller Day", title_pl: "USA obchodzi Narodowy Dzień Hellen Kellar", description_eng: "Helen Keller Day is a commemorative holiday to celebrate the birth of Helen Keller, observed on June 27 annually. The holiday observance was created by presidential proclamation in 1980, as well as by international organizations, particularly those helping the blind and the deaf. The holiday is generally known for its fashion show held on June 27 annually for fundraising purposes.", description_pl: " ", mmddyyy: "19711201", year_era_id: 1960, month_id: 6, day_id: 27, month_day_id: 179, read_more_eng: "https://en.wikipedia.org/wiki/Helen_Keller_Day", read_more_pl: "https://en.wikipedia.org/wiki/Helen_Keller_Day", country_id: usa.id)

Et.create!(event_id: hkd.id, type_id: 1)
Ep.create!(event_id: hkd.id, person_id: hellen.id)

------------------------------------------

lorraine = Person.create!(
name: "Lorraine Hansberry",
birth: 1930,
death: 1965,
bio_eng: "Lorraine Hansberry (1930-1965) was a playwright and writer. She was the first black female author to have a play performed on Broadway. Her best known work, the play 'A Raisin in the Sun', highlights the lives of Black Americans living under racial segregation in Chicago. Growing up in Chicago, Lorraine’s family moved into an all-white neighborhood and faced violent backlash for doing so. Her father worked with the NAACP to bring a legal challenge to the restrictive housing covenants. The case made its way all the way to the
Supreme Court and paved the way for outlawing housing discrimination. After moving from the Midwest to New York City, Lorraine landed a job at Freedom, the Black newspaper published by Paul Robeson. She took classes on African history from W.E.B. DuBois at the Jefferson School for Social Science run by the Communist Party. The FBI closely monitored Lorraine’s work for racial justice and compiled
a file on her that exceeded a thousand pages. When Lorraine died from pancreatic cancer at the age of 34, her friend
Nina Simone wrote 'To Be Young, Gifted and Black'.",
bio_pl: "Lorraine Hansberry (1930-1965) była amerykańską scenopisarką i pisarką. Była pierwszą czarną pisarką, której sztuka została wystawiona na Broadwayu. Jej najbardziej znana sztuka 'A Raisin in the Sun' obrazuje życie czarnych Amerykanów i Amerykanek w czasach segregacji rasowej w Chicago.",
quote_eng: "Never be afraid to sit awhile and think.",
quote_pl: "Nigdy nie bój się usiąść na chwilę i pomyśleć.",
read_more_eng: "https://en.wikipedia.org/wiki/Lorraine_Hansberry",
read_more_pl: "https://pl.wikipedia.org/wiki/Lorraine_Hansberry",
picture: "https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Lorraine_Hansberry.jpg/220px-Lorraine_Hansberry.jpg"
)


Cp.create!(country_id: usa.id, person_id: lorraine.id)

bleecker = Place.create!(name_eng: "337 Bleecker Street", name_pl: "337 Bleecker Street", zip: "10014", country_id: usa.id, latitude: 40.701100, longitude: -74.007870)

Pp.create!(country_id: bleecker.id, person_id: lorraine.id, description_eng: "In this house Lorraine Hansberry wrote her famous play 'A Raisin in the Sun'")


raisin = Event.create!(title_eng: "Lorraine Hansberry's play opens on Broadway making her first African American woman to be produced there.", title_pl: "USA obchodzi Narodowy Dzień Hellen Kellar", description_eng: "Opening on March 11, 1959, A Raisin in the Sun became the first play written by an African American woman to be produced on Broadway. The 29-year-old author became the youngest American playwright and only the fifth woman to receive the New York Drama Critics Circle Award for Best Play. Over the next two years, Raisin was translated into 35 languages and was being performed all over the world", description_pl: " ", mmddyyy: "19590301", year_era_id: 1959, month_id: 3, day_id: 1, month_day_id: 71, read_more_eng: "https://en.wikipedia.org/wiki/Lorraine_Hansberry", read_more_pl: "https://pl.wikipedia.org/wiki/Lorraine_Hansberry", country_id: usa.id)

Et.create!(event_id: raisin.id, type_id: 1)
Ep.create!(event_id: raisin.id, person_id: lorraine.id)

------------------------------------------

Person.create!(
name: "Angela Davis",
birth: 1944,
death: nil,
bio_eng: "Angela Yvonne Davis (born 1944) is an American communist, political activist, academic, and author. She emerged as a prominent counterculture activist in the 1960s working with the Communist Party USA, of which she was a member until 1991, and was involved in the Black Panther Party during the Civil Rights Movement. She co-founded Critical Resistance, an organization working to abolish the prison–industrial complex. Her political activism led to her imprisonment as she was considered 'a dangerous terrorist' by president Nixon. Lacking meaningful evidence, the government used her love letters to try to sway the jury. A global movement emerged to demand freedom for Angela Davis and all political prisoners. The Rolling Stones wrote 'Sweet Black Angel.' John Lennon and Yoko Ono released 'Angela' in her support. Angela’s brilliant testimony in the courtroom convinced the all-white jury of the absurdity of the claims against her. They acquitted her of all charges.  Davis is a professor emerita at the University of California, Santa Cruz, in its History of Consciousness Department. She is also a former director of the university's Feminist Studies department. Her research interests are feminism, African-American studies, critical theory, Marxism, popular music, social consciousness, and the philosophy and history of punishment and prisons. ",
bio_pl: "Angela Yvonne Davis (ur. 26 stycznia 1944 w Birmingham) – amerykańska komunistka i feministka, była działaczka na rzecz emancypacji Afroamerykanów w USA, profesor uniwersytecka (Uniwersytet Kalifornijski), związana m.in. z ruchem Czarnych Panter oraz ruchami na rzecz przeciwdziałania przemocy wobec kobiet i walki o prawa obywatelskie, członkini Komunistycznej Partii USA.",
quote_eng: "I think the importance of doing activist work is precisely because it allows you to give back and to consider yourself not as a single individual who may have achieved whatever but to be a part of an ongoing historical movement.",
quote_pl: "Myślę, że waga aktywizmu leży dokładnie w tym, że pozwala Ci dać cząstkę siebie społeczeństwu i postrzegać siebie nie jako pojedynczą jednostkę, która osiągnęła cokolwiek, ale jako część trwającego historycznego ruchu i procesu.",
read_more_eng: "https://en.wikipedia.org/wiki/Angela_Davis",
read_more_pl: "https://pl.wikipedia.org/wiki/Angela_Davis",
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Angela_Davis_en_Bogotá%2C_Septiembre_de_2010.jpg/220px-Angela_Davis_en_Bogotá%2C_Septiembre_de_2010.jpg"
)

detention_house = Place.create!(name_eng: "Women’s House of Detention", name_pl: "Zakład karny dla kobiet", zip: "10011", country_id: usa.id, latitude: 40.708850, longitude: -74.007870)

Cp.create!(country_id: usa.id, person_id: angela.id)
Pp.create!(country_id: detention_house.id, person_id: angela.id, description_eng: "In 1972 Angela Davis was incarcerated in this facility for her political activism. She was released on a $100,000 bail following a global movement emerged to demand freedom, which involved John Lennon, Yoko Ono and the Rolling Stones")


# Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: angela.id)
------------------------------------------

Person.create!(
name: "Marsha P. Johnson",
birth: 1945,
death: 1992,
bio_eng: "Marsha P. Johnson was a transgender activist, drag queen, and Stonewall riot instigator.",
bio_pl: " "
quote_eng: " ",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Marsha_P._Johnson",
read_more_pl: "https://en.wikipedia.org/wiki/Marsha_P._Johnson"
picture: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/A_photo_of_Marsha_P._Johnson.png/220px-A_photo_of_Marsha_P._Johnson.png"
)
Kraj pochodzenia: USA
Kraj zamieszkania: USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------

Person.create!(
name: "Stormé DeLarverie",
birth: 1920,
death: 2014,
bio_eng: "Stormé DeLarverie was a butch lesbian whose scuffle with police was the spark that ignited the Stonewall riots, spurring the crowd to action. She is remembered as a gay civil rights icon and entertainer. ",
bio_pl: " "
quote_eng: " ",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Stormé_DeLarverie",
read_more_pl: "https://en.wikipedia.org/wiki/Stormé_DeLarverie"
picture: "https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Stormé_DeLarverie.jpg/220px-Stormé_DeLarverie.jpg"
)
Kraj pochodzenia: USA
Kraj zamieszkania: USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------

martha = Person.create!(
name: "Martha Graham",
birth: 1894,
death: 1991,
bio_eng: "Martha Graham was an American modern dancer and choreographer. Her style, the Graham technique, reshaped American dance and is still taught worldwide.",
bio_pl: " "
quote_eng: " ",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Martha_Graham#cite_note-TIME-1",
read_more_pl: "https://pl.wikipedia.org/wiki/Martha_Graham"
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Martha_Graham_1948.jpg/220px-Martha_Graham_1948.jpg"
)
Kraj pochodzenia: USA
Kraj zamieszkania: USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------

Person.create!(
name: "Miriam Makeba",
birth: 1932,
death: 2008,
bio_eng: "Zenzile Miriam Makeba, nicknamed Mama Africa, was a South African singer, songwriter, actress, United Nations goodwill ambassador, and civil rights activist. She was an advocate against apartheid and white-minority government in South Africa. Makeba was among the first African musicians to receive worldwide recognition and the first African recording artist to win a Grammy.",
bio_pl: " "
quote_eng: " ",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Miriam_Makeba",
read_more_pl: "https://pl.wikipedia.org/wiki/Miriam_Makeba"
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Miriam_makeba_01.jpg/260px-Miriam_makeba_01.jpg"
)
Kraj pochodzenia: Union of South Africa
Kraj zamieszkania: Union of South Africa, USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------

Person.create!(
name: "Doris Humpray",
birth: 1895,
death: 1958,
bio_eng: "Doris Humphrey was an American dancer and choreographer. Humphrey was one of the second generation modern dance pioneers who followed their forerunners in exploring the use of breath and developing techniques still taught today. As many of her works were annotated, Humphrey continues to be taught, studied and performed.",
bio_pl: " "
quote_eng: " ",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Doris_Humphrey",
read_more_pl: "https://en.wikipedia.org/wiki/Doris_Humphrey"
picture: "http://www.artnet.com/WebServices/images/ll00159lldEPaFFg2bECfDrCWvaHBOc8PF/barbara-morgan-doris-humphrey---to-the-dance.jpg"
)
Kraj pochodzenia: USA
Kraj zamieszkania: USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------

Person.create!(
name: "Lorena Hickok",
birth: 1893,
death: 1968,
bio_eng: " ",
bio_pl: " "
quote_eng: ""Given courage and ability and a favorable set of circumstances, there is no greater way to [acquire] influence than to be free of personal ambition." ",
quote_pl: ""
read_more_eng: "https://en.wikipedia.org/wiki/Lorena_Hickok",
read_more_pl: "https://en.wikipedia.org/wiki/Lorena_Hickok"
picture: "https://timedotcom.files.wordpress.com/2016/03/hickok.jpeg"
)
Kraj pochodzenia: USA
Kraj zamieszkania: USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------

------------------------------------------

Person.create!(
name: "Helen Tamaris",
birth: 1905,
death: 1966,
bio_eng: "Helen Tamiris was an American choreographer, modern dancer, and teacher. Much of her known works deal with social issues like racism and war.  Helen Tamiris was Jewish and she choreographed some pieces with themes that reflected her heritage in this regard.",
bio_pl: " "
quote_eng: " ",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Helen_Tamiris",
read_more_pl: "https://en.wikipedia.org/wiki/Helen_Tamiris"
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Helen_Tamiris_NYWTS.jpg/220px-Helen_Tamiris_NYWTS.jpg"
)
Kraj pochodzenia: USA
Kraj zamieszkania: USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------------------------------------------------

Person.create!(
name: "Katherine Dunham",
birth: 1909,
death: 2006,
bio_eng: "Katherine Dunham was an African-American dancer, choreographer, author, educator, anthropologist, and social activist. She directed her own dance company for many years. She has been called the "matriarch and queen mother of black dance."",
bio_pl: ""
quote_eng: "I used to want the words "She tried" on my tombstone. Now I want "She did it."",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Katherine_Dunham",
read_more_pl: "https://en.wikipedia.org/wiki/Katherine_Dunham"
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Katherine_Dunham.jpg/220px-Katherine_Dunham.jpg"
)
Kraj pochodzenia: USA
Kraj zamieszkania: USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------------------------------------------------

Person.create!(
name: "Maria Skłodowska-Curie",
birth: 1867,
death: 1934,
bio_eng: "Marie Skłodowska Curie was a Polish physicist and chemist who conducted pioneering research on radioactivity. She was the first woman to win a Nobel Prize, the first person and only woman to win the Nobel prize twice, and the only person to win the Nobel Prize in two different scientific fields.",
bio_pl: "Maria Skłodowska Curie była polską fizyczką i chemiczką, która prowadziła pionierskie badania nad radioaktywnością. Była pierwszą kobietą, która dostała Nagrodę Nobla, pierwszą osobą i jedyną kobietą, która dwukrotnie zdobyła nagrodę Nobla, i jedyną osobą, która zdobyła Nagrodę Nobla w dwóch różnych dziedzinach ścisłych."
quote_eng: " ",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Marie_Curie",
read_more_pl: "https://pl.wikipedia.org/wiki/Maria_Skłodowska-Curie"
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Marie_Curie_c1920.jpg/220px-Marie_Curie_c1920.jpg"
)
Kraj pochodzenia: Polska
Kraj zamieszkania: Polska, Francja

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)

------------------------------------------------------------------------------------

Person.create!(
name: "Annie Leibovitz",
birth: 1949,
death: nil,
bio_eng: "Anna-Lou "Annie" Leibovitz is a portrait photographer. She is best known for her engaging portraits—particularly of celebrities—which often feature subjects in intimate settings and poses. She became the first woman to hold an exhibition at Washington's National Portrait Gallery.",
bio_pl: " "
quote_eng: " ",
quote_pl: " "
read_more_eng: "https://en.wikipedia.org/wiki/Annie_Leibovitz",
read_more_pl: "https://pl.wikipedia.org/wiki/Annie_Leibovitz"
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Annie_Leibovitz-SF-1-Crop.jpg/450px-Annie_Leibovitz-SF-1-Crop.jpg"
)
Kraj pochodzenia: USA
Kraj zamieszkania: USA

Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)


------------------------------------------
# CONNECTIONS:

Connection.create!(relationship: "romantic", person_one_id: susan.id, person_two_id: annie.id)
Connection.create!(relationship: "friendship", person_one_id: nina.id, person_two_id: lorraine.id)

Connection.create!(relationship: "friendship", person_one_id: gloria.id, person_two_id: angela.id)
Connection.create!(relationship: "collaboration", person_one_id: gloria.id, person_two_id: dorothy.id)
Connection.create!(relationship: "friendship", person_one_id: gloria.id, person_two_id: wilma.id)

Connection.create!(relationship: "friendship", person_one_id: martha.id, person_two_id: hellen.id)







DATY LIPIEC

in July 1898, Curie and her husband published a joint paper announcing the existence of an element which they named "polonium", in honour of her native Poland,




CYTATY:


Marsha P. Johnson:
"I may be crazy, but that don't make me wrong."
Storme:
"Age ain't nothing but a number -- if you don't mind it, it don't matter" [source: http://www.stonewallvets.org/StormeDeLarverie.htm]
Martha Graham:
"Nobody cares if you can't dance well. Just get up and dance. Great dancers are great because of their passion."
"What people in the world think of you is really none of your business."
"Great dancers are not great because of their technique, they are great because of their passion. "


Miriam Makeba:
Be careful, think about the effect of what you say. Your words should be constructive, bring people together, not pull them apart.
Maria Skłodowska-Curie:
- Niczego w życiu nie należy się bać, należy to tylko zrozumieć.
- Nie można bowiem mieć nadziei na skierowanie świata ku lepszym drogom, o ile się jednostek nie skieruje ku lepszemu. W tym celu każdy z nas powinien pracować nad udoskonaleniem się własnym, jednocześnie zdając sobie sprawę ze swej, osobistej odpowiedzialności za całokształt tego, co się dzieje w świecie, i z tego, że obowiązkiem bezpośrednim każdego z nas jest dopomagać tym, którym możemy się stać najbardziej użyteczni.


Annie Leibovitz:
"I'm more interested in being good than being famous."
I don't think I could give advice to my younger self because she probably wouldn't listen.
I didn't want to let women down. One of the stereotypes I see breaking is the idea of aging and older women not being beautiful.

-------------------------------------
Stonewall Inn
53 Chistopher Street

Police have routinely raided places where Lesbian, Gay, Bisexual, Two
Spirit, Trans and Gender Non-Conforming people congregate. On June
28, 1969, when the police began making arrests at the Stonewall Inn,
the people fought back. Trans women of color, including Miss Major,
Marsha P. Johnson, and Sylvia Rivera played a pivotal role in the
Stonewall Rebellion, which sparked a massive movement. Those
imprisoned a block away at New York Women's House of Detention
expressed solidarity with those in the street below. LREI, founded in
1921 by the politically active lesbian Elisabeth Irwin, has long served
a place of refuge for queer families, teachers, and students. It was the
first school to march in the city’s Pride Parade. The youngest children
philosophize about family structure over playdough and try on various
genders and sexualities in dramatic play. The older students formally
study intersectional feminism with the legendary Ileana Jiménez.


-------------------------------------------------
Travers Residence
39 Charlton Street
Mary Travers was born to progressive journalists Robert Travers and
Virginia Coigney. Both were active organizers with the Newspaper Guild.
Virginia wrote a biography of fellow Village resident Margaret Sanger,
the founder of Planned Parenthood. When Margaret was prosecuted under
the Comstock Act for her writing about birth control, she fled the country.
While Margaret was a fugitive, her children were cared for by Elisabeth
Irwin’s friends, Caroline Pratt, founder of City and Country School, and
Helen Marot, prominent writer and labor organizer.
At LREI, Mary studied music with Charity Bailey during her younger
years and sang in Bob De Cormier’s chorus in high school. Music was
alive throughout the neighborhood. Pete Seeger, who lived at 129
MacDougal Street, regularly stopped by the school to play, where his wife
Toshi had been a student. Woody Guthrie, whose first apartment in the
city was at 74 Charles Street, sent his kids to the school. Woody’s “This
Land is Your Land” became and remains to this day the de facto school
song.
Soon Mary, along with three other LREI friends and musicians who
played around Washington Square Park, joined the Song Swappers. The
group accompanied Pete on four albums, including Talking Union and
Other Union Songs. Peter, Paul, and Mary performed together for the first
time in 1961 at the Bitter End at 147 Bleecker Street. Bob De Cormier,
Mary’s teacher at LREI, served as the musical director for the group as
well as for Harry Belafonte.
Peter, Paul, and Mary were ardently political. During the 1963 March
on Washington, where Dr. King delivered his “I Have a Dream” speech,
they played “If I Had a Hammer” and “Blowin’ In The Wind” from the
steps of the Lincoln Memorial. Bob Dylan, who would become an LREI
parent while living at 94 MacDougal Street, also performed that day.
In 1965, the group performed for those marching from Selma to
Montgomery. In 1968, they played a fundraiser for Cesar Chavez, Dolores
Huerta, and the United Farm Workers in the midst of the Delano grape
strike and solidarity grape boycott. During the 1967 Stop the Draft Week,
the group performed at the culminating march to the Pentagon. In 1984,
Mary along with her mother Virginia and daughter Alicia were arrested in
DC protesting South African apartheid. In 1995, the group played at Kent
State to honor the memory of the students killed there by the National
Guard a quarter century earlier.
