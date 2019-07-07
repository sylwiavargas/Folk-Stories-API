# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pp.destroy_all
Cp.destroy_all
Ep.destroy_all
Et.destroy_all
Tsu.destroy_all
Subscription.destroy_all
Connection.destroy_all
User.destroy_all
Event.destroy_all
Place.destroy_all
Country.destroy_all
MonthDay.destroy_all
YearEra.destroy_all
Type.destroy_all
Year.destroy_all
Day.destroy_all
Month.destroy_all
Era.destroy_all
Person.destroy_all
Continent.destroy_all

Pp.reset_pk_sequence
Connection.reset_pk_sequence
User.reset_pk_sequence
Person.reset_pk_sequence
Continent.reset_pk_sequence
Country.reset_pk_sequence
Event.reset_pk_sequence
Place.reset_pk_sequence
Type.reset_pk_sequence
Subscription.reset_pk_sequence
Cp.reset_pk_sequence
Ep.reset_pk_sequence
Et.reset_pk_sequence
Tsu.reset_pk_sequence
Year.reset_pk_sequence
Day.reset_pk_sequence
Month.reset_pk_sequence
MonthDay.reset_pk_sequence
Era.reset_pk_sequence
YearEra.reset_pk_sequence

################# USERS ###############

sylwia = User.create!(name: "Sylwia", username: "sylwia", password: "sylwia", email: "sylwia@gmail.com", zip: 11237)
joel = User.create!(name: "Joel", username: "jo", password: "123456", email: "jo@gmail.com", zip: 11385)

################# PEOPLE ###############
eleanor = Person.create!(name:"Eleanor Roosevelt", death: 1884, birth: 1962, bio_eng: "Eleanor Roosevelt (1884-1962) was an American human rights activist, diplomat and publicist as well as a first lady. As the chair of the UN Commission on Human Rights, she oversaw the drafting of the Universal Declaration of Human Rights; she fought against racial discrimination.", bio_pl: "Eleanor Roosevelt (1884-1962) - amerykańska działaczka na rzecz praw człowieka, dyplomatka i publicystka. Pierwsza dama USA. Jako przewodnicząca Komisji Praw Człowieka w ONZ, współtworzyła Powszechną Deklarację Praw Człowieka. Działała przeciwko dyskryminacji rasowej.", picture: "https://upload.wikimedia.org/wikipedia/commons/2/22/Eleanor_Roosevelt_portrait_1933.jpg", quote_eng: "It doesn’t matter whom you love – love them with your whole heart!", quote_pl: "Nieważne, kogo kochasz - kochaj całym sercem!", read_more_eng: "https://en.wikipedia.org/wiki/Eleanor_Roosevelt", read_more_pl: "https://pl.wikipedia.org/wiki/Eleanor_Roosevelt")

amelia = Person.create!(name:"Amelia Earhart", death: 1897, birth: 1939, bio_eng: "Amelia Earhart (1897-1939) was an American pilot, journalist, poet and feminist activist. She knew she wanted to fly planes since childhood and became the first woman and the second person in the world to fly over the Atlantic ocean.", bio_pl: "Amelia Earhart (1897-1939) - amerykańska pilotka, dziennikarka i poetka; jako pierwsza kobieta i druga osoba na świecie przeleciała samotnie nad oceanem. Działaczka feministyczna.", picture: "https://upload.wikimedia.org/wikipedia/commons/b/b2/Amelia_Earhart_standing_under_nose_of_her_Lockheed_Model_10-E_Electra%2C_small.jpg", quote_eng: "Everyone has oceans to fly, if they have the heart to do it. Is it reckless? Maybe. But what do dreams know of boundaries?", quote_pl: "Wiele małych kroczków prowadzi do wielkich marzeń. Nie marudź, po prostu się rusz - raz, dwa, raz, dwa!", read_more_eng: "https://en.wikipedia.org/wiki/Amelia_Earhart", read_more_pl: "https://pl.wikipedia.org/wiki/Amelia_Earhart")

nina = Person.create!(
name: "Nina Simone",
birth: 1933,
death: 2003,
bio_eng: "Nina Simone (1933-2003) was an American singer, pianist, songwriter. Her early aspirations would be to become a concert pianist, which would lead her to audition at Curtis Institiute of Music in Philadelphia, but was sadly rejected; a decision she felt was based on her race. Later on, she was involved in Civil Rights Movement and performed and spoke at many civil rights meetings, such as at the Selma to Montgomery marches. Simone had always included songs in her repertoire that drew upon her African-American origins. On her debut album, Simone for the first time openly addressed the racial inequality that was prevalent in the United States with the song “Mississippi Goddam”, her response to the murder of Medgar Evers and the Birmingham Church Bombing. The song was released as a single, and it was boycotted in certain southern states. Simone’s legacy was on the airways, in the background telling everyone of the struggles every African-American endured, even if they did not want to learn.",
bio_pl: " ",
quote_eng: "I know I’m different, but I don’t think about it.",
quote_pl: " ",
read_more_eng: "https://www.blackhistorymonth.org.uk/article/section/bhm-heroes/nina-simone-singer-songwriter-civil-rights-campaigner/",
read_more_pl: "https://pl.wikipedia.org/wiki/Nina_Simone",
picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Nina_Simone_%281965%29.jpg/180px-Nina_Simone_%281965%29.jpg"
)


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

  angela = Person.create!(
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

  marsha = Person.create!(
  name: "Marsha P. Johnson",
  birth: 1945,
  death: 1992,
  bio_eng: "Marsha P. Johnson (1945 - 1992) was an American gay liberation activist and self-identified drag queen. Known as an outspoken advocate for gay rights, Johnson was one of the prominent figures in the Stonewall uprising of 1969. A founding member of the Gay Liberation Front, Johnson co-founded the gay and transvestite advocacy organization S.T.A.R. (Street Transvestite Action Revolutionaries), alongside close friend Sylvia Rivera. A popular figure in New York City's gay and art scene, Johnson modeled for Andy Warhol, and performed onstage with the drag performance troupe Hot Peaches. Known for decades as a welcoming presence in the streets of Greenwich Village, Johnson was known as the 'mayor of Christopher Street'. From 1987 through 1992, Johnson was an AIDS activist with ACT UP. In a 1992 interview, Johnson described being the young victim of sexual assault by an adolescent boy. After this, Johnson described the idea of being gay as 'some sort of dream', rather than something that seemed possible, and so chose to remain asexual until leaving for New York City at 17. Johnson's mother reportedly said that being homosexual is like being 'lower than a dog', but Johnson said that her mother was unaware of the LGBT community. At 18 in 1963, she left home for New York City with $15 and a bag of clothes. She waited on tables after moving to Greenwich Village in 1966. After meeting gay people in the city, Johnson finally felt it was possible to be gay and was able to come out. Johnson said she was one of the first drag queens to go to the Stonewall Inn, after they began allowing women and drag queens inside; it was previously a bar for only gay men.",
  bio_pl: " ",
  quote_eng: "I may be crazy, but that don't make me wrong.",
  quote_pl: "Może jestem szalona, ale nie wprowadzaj mnie w błąd.",
  read_more_eng: "https://en.wikipedia.org/wiki/Marsha_P._Johnson",
  read_more_pl: "https://en.wikipedia.org/wiki/Marsha_P._Johnson",
  picture: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/A_photo_of_Marsha_P._Johnson.png/220px-A_photo_of_Marsha_P._Johnson.png"
  )

  storme = Person.create!(
  name: "Stormé DeLarverie",
  birth: 1920,
  death: 2014,
  bio_eng: "Stormé DeLarverie was a butch lesbian whose scuffle with police was the spark that ignited the Stonewall riots, spurring the crowd to action. She is remembered as a gay civil rights icon and entertainer.",
  bio_pl: " ",
  quote_eng: "Age ain't nothing but a number -- if you don't mind it, it don't matter.",
  quote_pl: "Wiek to tylko numer - jeśli nie zwracasz na niego uwagi, nie ma on znaczenia.",
  read_more_eng: "https://en.wikipedia.org/wiki/Stormé_DeLarverie",
  read_more_pl: "https://en.wikipedia.org/wiki/Stormé_DeLarverie",
  picture: "https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Stormé_DeLarverie.jpg/220px-Stormé_DeLarverie.jpg"
  )

  martha = Person.create!(
  name: "Martha Graham",
  birth: 1894,
  death: 1991,
  bio_eng: "Martha Graham was an American modern dancer and choreographer. Her style, the Graham technique, reshaped American dance and is still taught worldwide. She danced and taught for over seventy years. Graham was the first dancer to perform at the White House, travel abroad as a cultural ambassador, and receive the highest civilian award of the US: the Presidential Medal of Freedom with Distinction.",
  bio_pl: " ",
  quote_eng: "Nobody cares if you can't dance well. Just get up and dance. Great dancers are great because of their passion.",
  quote_pl: "Nikogo nie obchodzi, czy tańczysz dobrze. Po prostu wstań i zacznij tańczyć. Świetni tancerze są świetni dzięki ich pasji.",
  read_more_eng: "https://en.wikipedia.org/wiki/Martha_Graham",
  read_more_pl: "https://pl.wikipedia.org/wiki/Martha_Graham",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Martha_Graham_1948.jpg/220px-Martha_Graham_1948.jpg")

  miriam = Person.create!(
  name: "Miriam Makeba",
  birth: 1932,
  death: 2008,
  bio_eng: "Zenzile Miriam Makeba (1932-2008), nicknamed Mama Africa, was a South African singer, songwriter, actress, United Nations goodwill ambassador, and civil rights activist. She was an advocate against apartheid and white-minority government in South Africa. Makeba was among the first African musicians to receive worldwide recognition and the first African recording artist to win a Grammy. When she first moved to the US, Makeba lived in Greenwich Village, along with other musicians and actors. As was common in her profession, she experienced some financial insecurity, and worked as a babysitter for a period. She first came to popular and critical attention in jazz clubs, after which her reputation grew rapidly.",
  bio_pl: "Południowoafrykańska piosenkarka, znana także jako 'Mama Africa'.",
  quote_eng: "Be careful, think about the effect of what you say. Your words should be constructive, bring people together, not pull them apart.",
  quote_pl: "Myśl o tym, jaki efekt może mieć to, co mówisz. Twoje słowa powinny być konstruktywne, przyciągać razem ludzi, a nie ich od siebie odpychać.",
  read_more_eng: "https://en.wikipedia.org/wiki/Miriam_Makeba",
  read_more_pl: "https://pl.wikipedia.org/wiki/Miriam_Makeba",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Miriam_makeba_01.jpg/260px-Miriam_makeba_01.jpg"
  )

  dorris = Person.create!(
  name: "Doris Humpray",
  birth: 1895,
  death: 1958,
  bio_eng: "Doris Humphrey (1895-1958) was an American dancer and choreographer. Humphrey was one of the second generation modern dance pioneers who followed their forerunners in exploring the use of breath and developing techniques still taught today. As many of her works were annotated, Humphrey continues to be taught, studied and performed.",
  bio_pl: " ",
  quote_eng: "There are times when the simple dignity of movement can fulfill the function of a volume of words.",
  quote_pl: "Są momenty, w których zwyczajna godność ruchu potrafi pełnić funkcję słów.",
  read_more_eng: "https://en.wikipedia.org/wiki/Doris_Humphrey",
  read_more_pl: "https://en.wikipedia.org/wiki/Doris_Humphrey",
  picture: "http://www.artnet.com/WebServices/images/ll00159lldEPaFFg2bECfDrCWvaHBOc8PF/barbara-morgan-doris-humphrey---to-the-dance.jpg"
  )

  lorena = Person.create!(
  name: "Lorena Hickok",
  birth: 1893,
  death: 1968,
  bio_eng: "Lorena Alice 'Hick' Hickok (1893 – 1968) was an American journalist. Born in East Troy, Wisconsin, Hickok had an unhappy childhood marked by isolation and abuse. After her mother's death when Hickok was thirteen, she left home, worked on her own, and completed high school with the help of a cousin. She went into journalism after failing out of college, and soon became a successful reporter for the Minneapolis Tribune and the Associated Press (AP), achieving several firsts for American women journalists. By 1932, she had become the nation's best-known female reporter. After being assigned to cover Roosevelt during her husband's first presidential campaign, Hickok struck up a close relationship with the soon-to-be First Lady. For several years, the two corresponded almost every day, traveled together, and professed emotional and physical affection for one another. Late in life, Hickok wrote several books. She co-authored Ladies of Courage with Eleanor Roosevelt in 1954.[49] This was followed by The Story of Franklin D. Roosevelt (1956), The Story of Helen Keller (1958), The Story of Eleanor Roosevelt (1959), and several more.",
  bio_pl: " ",
  quote_eng: "Given courage and ability and a favorable set of circumstances, there is no greater way to acquire influence than to be free of personal ambition.",
  quote_pl: " ",
  read_more_eng: "https://en.wikipedia.org/wiki/Lorena_Hickok",
  read_more_pl: "https://en.wikipedia.org/wiki/Lorena_Hickok",
  picture: "https://timedotcom.files.wordpress.com/2016/03/hickok.jpeg"
  )

  helen = Person.create!(
  name: "Helen Tamaris",
  birth: 1905,
  death: 1966,
  bio_eng: "Helen Tamiris was an American choreographer, modern dancer, and teacher. Much of her known works deal with social issues like racism and war. Helen Tamiris was Jewish and she choreographed some pieces with themes that reflected her heritage in this regard.",
  bio_pl: " ",
  quote_eng: "Art is international but the artist is a product of a nationality. … There are no general rules. Each original work of art creates its own code.",
  quote_pl: " ",
  read_more_eng: "https://jwa.org/encyclopedia/article/tamiris-helen",
  read_more_pl: "https://en.wikipedia.org/wiki/Helen_Tamiris",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Helen_Tamiris_NYWTS.jpg/220px-Helen_Tamiris_NYWTS.jpg"
  )

  katherine = Person.create!(
  name: "Katherine Dunham",
  birth: 1909,
  death: 2006,
  bio_eng: "Katherine Dunham (1909-2006) was an African-American dancer, choreographer, author, educator, anthropologist, and social activist. She directed her own dance company for many years. She has been called the 'matriarch and queen mother of black dance.'",
  bio_pl: " ",
  quote_eng: "I used to want the words 'She tried' on my tombstone. Now I want'She did it.'",
  quote_pl: " ",
  read_more_eng: "https://en.wikipedia.org/wiki/Katherine_Dunham",
  read_more_pl: "https://en.wikipedia.org/wiki/Katherine_Dunham",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Katherine_Dunham.jpg/220px-Katherine_Dunham.jpg"
  )

  maria = Person.create!(
  name: "Maria Skłodowska-Curie",
  birth: 1867,
  death: 1934,
  bio_eng: "Marie Skłodowska Curie (1867-1934) was a Polish physicist and chemist who conducted pioneering research on radioactivity. She was the first woman to win a Nobel Prize, the first person and only woman to win the Nobel prize twice, and the only person to win the Nobel Prize in two different scientific fields.",
  bio_pl: "Maria Skłodowska Curie była polską fizyczką i chemiczką, która prowadziła pionierskie badania nad radioaktywnością. Była pierwszą kobietą, która dostała Nagrodę Nobla, pierwszą osobą i jedyną kobietą, która dwukrotnie zdobyła nagrodę Nobla, i jedyną osobą, która zdobyła Nagrodę Nobla w dwóch różnych dziedzinach ścisłych.",
  quote_eng: "One should be afraid of nothing. One should understand everything.",
  quote_pl: "Niczego w życiu nie należy się bać, należy to tylko zrozumieć.",
  read_more_eng: "https://en.wikipedia.org/wiki/Marie_Curie",
  read_more_pl: "https://pl.wikipedia.org/wiki/Maria_Skłodowska-Curie",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Marie_Curie_c1920.jpg/220px-Marie_Curie_c1920.jpg"
  )

  kazimiera = Person.create!(
  name: "Kazimiera Bujwidowa",
  birth: 1867,
  death: 1934,
  bio_eng: "Kazimiera Bujwidowa (1867-1932) was a feminist activist from Cracow. She established reading rooms and libraries for women and youth. Thanks to her, Poland's Jagiellonian University accepted the first female students. She was close friends with Maria Skłodowska-Curie, both connected by their women's rights activism.",
  bio_pl: "Kazimiera Bujwidowa (1867–1932) – krakowska feministka; dzięki jej działaniom Uniwersytet Jagielloński przyjął pierwsze kobiety na studia, a dziewczyny mogły zdawać maturę; założyła Czytelnię dla kobiet.",
  quote_eng: "I live because I want to live and not because I have to. I live as I want and never as I have to.",
  quote_pl: "Żyję - bo chcę żyć, a nigdy, bo muszę i żyję tak, jak chcę, a nigdy tak, jak muszę!",
  read_more_eng: "https://en.wikipedia.org/wiki/Kazimiera_Bujwidowa",
  read_more_pl: "https://pl.wikipedia.org/wiki/Kazimiera_Bujwidowa",
  picture: "https://en.wikipedia.org/wiki/Kazimiera_Bujwidowa#/media/File:Kazimiera_Bujwidowa_Polish_womens_rights.jpg"
  )

  annie = Person.create!(
  name: "Annie Leibovitz",
  birth: 1949,
  death: nil,
  bio_eng: "Anna-Lou 'Annie' (born 1949) Leibovitz is a portrait photographer. She is best known for her engaging portraits—particularly of celebrities—which often feature subjects in intimate settings and poses. She became the first woman to hold an exhibition at Washington's National Portrait Gallery.",
  bio_pl: " ",
  quote_eng: "I don't think I could give advice to my younger self because she probably wouldn't listen.",
  quote_pl: " ",
  read_more_eng: "https://en.wikipedia.org/wiki/Annie_Leibovitz",
  read_more_pl: "https://pl.wikipedia.org/wiki/Annie_Leibovitz",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Annie_Leibovitz-SF-1-Crop.jpg/450px-Annie_Leibovitz-SF-1-Crop.jpg"
  )


  ################# CONNECTIONS ###############
  Connection.create!(relationship: "romantic", person_one_id: eleanor.id, person_two_id: amelia.id)
  Connection.create!(relationship: "romantic", person_one_id: susan.id, person_two_id: annie.id)
  Connection.create!(relationship: "romantic", person_one_id: lorena.id, person_two_id: eleanor.id)

  Connection.create!(relationship: "friendship", person_one_id: nina.id, person_two_id: lorraine.id)
  Connection.create!(relationship: "friendship", person_one_id: nina.id, person_two_id: miriam.id)

  Connection.create!(relationship: "friendship", person_one_id: gloria.id, person_two_id: angela.id)
  Connection.create!(relationship: "collaboration", person_one_id: gloria.id, person_two_id: dorothy.id)
  Connection.create!(relationship: "friendship", person_one_id: gloria.id, person_two_id: wilma.id)

  Connection.create!(relationship: "friendship", person_one_id: martha.id, person_two_id: hellen.id)
  Connection.create!(relationship: "friendship", person_one_id: dorris.id, person_two_id: martha.id)
  Connection.create!(relationship: "friendship", person_one_id: helen.id, person_two_id: martha.id)
  Connection.create!(relationship: "friendship", person_one_id: katherine.id, person_two_id: martha.id)

  Connection.create!(relationship: "friendship", person_one_id: marsha.id, person_two_id: storme.id)

  Connection.create!(relationship: "friendship", person_one_id: maria.id, person_two_id: kazimiera.id)


  ################# CONTINENTS ###############
  north_am = Continent.create!(name_eng: "North America", name_pl: "Ameryka Północna")
  europe = Continent.create!(name_eng: "Europe", name_pl: "Europa")
  africa = Continent.create!(name_eng: "Africa", name_pl: "Afryka")


  ################# COUNTRIES ###############
  usa = Country.create!(name_eng: "USA", name_pl: "USA", continent_id: north_am.id)
  france = Country.create!(name_eng: "France", name_pl: "Francja", continent_id: europe.id)
  poland = Country.create!(name_eng: "Poland", name_pl: "Polska", continent_id: europe.id)
  barb_country = Country.create!(name_eng: "Barbados", name_pl: "Barbados", continent_id: north_am.id)
  rpa = Country.create!(name_eng: "South Africa", name_pl: "RPA", continent_id: africa.id)


  ################# PLACES ###############
  nyc = Place.create!(name_eng: "New York City", name_pl: "Nowy Jork", zip: 10001, country_id: usa.id, latitude: 40.7128, longitude: -74.0060)

  barbados = Place.create!(name_eng: "Barbados", name_pl: "Barbados", zip: 15028, country_id: barb_country.id, latitude: 13.193887, longitude: -59.543198)

  julliard = Place.create!(name_eng: "Julliard School", name_pl: "Julliard School", zip: 10023, country_id: usa.id, latitude: 40.773871, longitude: 40.773871 -73.983178)

  cuny = Place.create!(name_eng: "City University of New York", name_pl: "Uniwersytet Miejski Nowego Jorku", zip: 10001, country_id: usa.id, latitude: 40.8194, longitude: -73.95)

  nycacs = Place.create!(name_eng: "York City Administration for Children's Services", name_pl: "York City Administration for Children's Services", zip: 10038, country_id: usa.id, latitude: 40.708850, longitude: -74.007870)

  bleecker = Place.create!(name_eng: "337 Bleecker Street", name_pl: "337 Bleecker Street", zip: 10014, country_id: usa.id, latitude: 40.701100, longitude: -74.007870)
  detention_house = Place.create!(name_eng: "Women’s House of Detention", name_pl: "Zakład karny dla kobiet", zip: 10011, country_id: usa.id, latitude: 40.708850, longitude: -74.007870)

  lrei = Place.create!(name_eng: "Little Red School House (LREI)", name_pl: " Little Red School House", zip: 10014, country_id: usa.id, latitude: 40.726850, longitude: -74.004780)

  stonewall_inn = Place.create!(name_eng: "Stonewall Inn", name_pl: "Stonewall Inn", zip: 10014, country_id: usa.id, latitude: 40.733760, longitude: -74.001800)

  martha_school_place = Place.create!(name_eng: "The Martha Graham Dance Company", name_pl: "The Martha Graham Dance Company", zip: 10014, country_id: usa.id, latitude: 40.736881, longitude: -74.008499)

  village_vanguard = Place.create!(name_eng: "Village Vanguard (jazz club)", name_pl: "Village Vanguard (klub jazzowy)", zip: 10014, country_id: usa.id, latitude: 40.733210, longitude: -74.003020)


  ################ DAYS ##################

  d1 = Day.create!(day: 1)
  d2 = Day.create!(day: 2)
  d3 = Day.create!(day: 3)
  d4 = Day.create!(day: 4)
  d5 = Day.create!(day: 5)
  d6 = Day.create!(day: 6)
  d7 = Day.create!(day: 7)
  d8 = Day.create!(day: 8)
  d9 = Day.create!(day: 9)
  d10 = Day.create!(day: 10)
  d11 = Day.create!(day: 11)
  d12 = Day.create!(day: 12)
  d13 = Day.create!(day: 13)
  d14 = Day.create!(day: 14)
  d15 = Day.create!(day: 15)
  d16 = Day.create!(day: 16)
  d17 = Day.create!(day: 17)
  d18 = Day.create!(day: 18)
  d19 = Day.create!(day: 19)
  d20 = Day.create!(day: 20)
  d21 = Day.create!(day: 21)
  d22 = Day.create!(day: 22)
  d23 = Day.create!(day: 23)
  d24 = Day.create!(day: 24)
  d25 = Day.create!(day: 25)
  d26 = Day.create!(day: 26)
  d27 = Day.create!(day: 27)
  d28 = Day.create!(day: 28)
  d29 = Day.create!(day: 29)
  d30 = Day.create!(day: 30)
  d31 = Day.create!(day: 31)

  ################## MONTHS ##############

  m1 = Month.create!(month:1, name_eng:"January", name_pl:"Styczeń")
  m2 = Month.create!(month:2, name_eng:"February", name_pl:"Luty")
  m3 = Month.create!(month:3, name_eng:"March", name_pl:"Marzec")
  m4 = Month.create!(month:4, name_eng:"April", name_pl:"Kwiecień")
  m5 = Month.create!(month:5, name_eng:"May", name_pl:"Maj")
  m6 = Month.create!(month:6, name_eng:"June", name_pl:"Czerwiec")
  m7 = Month.create!(month:7, name_eng:"July", name_pl:"Lipiec")
  m8 = Month.create!(month:8, name_eng:"August", name_pl:"Sierpień")
  m9 = Month.create!(month:9, name_eng:"September", name_pl:"Wrzesień")
  m10 = Month.create!(month:10, name_eng:"October", name_pl:"Październik")
  m11 = Month.create!(month:11, name_eng:"November", name_pl:"Listopad")
  m12 = Month.create!(month:12, name_eng:"December", name_pl:"Grudzień")


  ################## YEARS ##############
  counter = 1
  2019.times do
    Year.create!(year: counter)
    counter += 1
  end

  ################## ERAS ##############

  ac = Era.create!(era:"AC")
  bc = Era.create!(era:"BC")


  ################# TYPES ###############
  women = Type.create!(name_eng: "Women", name_pl: "Kobiety")
  queer = Type.create!(name_eng: "Queer", name_pl: "Queer")


  ################## YEARERAS ##############

  accounter = 1
  2019.times do
    YearEra.create!(yera: "#{accounter} AC", year_id: "#{accounter}", era_id: 1)
  end
  #
  # bccounter = 0
  # 300.times do
  #   YearEra.create!(yera: "#{bccounter} AC", year_id: "#{bccounter}", era_id: 2)
  # end

  ################## MONTHDAYS ##############

  mcounter = 1

  12.times do
    dcounter = 1
    if mcounter == 1 || mcounter == 3 || mcounter == 5 || mcounter == 7 || mcounter == 8 || mcounter == 10 || mcounter == 12
      31.times do
        MonthDay.create!(mdd: "#{mcounter}#{dcounter}", month_id: "#{mcounter}", day_id: "#{dcounter}")
        dcounter += 1
      end
    elsif mcounter == 2
      29.times do
        MonthDay.create!(mdd: "#{mcounter}#{dcounter}", month_id: "#{mcounter}", day_id: "#{dcounter}")
        dcounter += 1
      end
    else
      30.times do
        MonthDay.create!(mdd: "#{mcounter}#{dcounter}", month_id: "#{mcounter}", day_id: "#{dcounter}")
        dcounter += 1
      end
    end
    mcounter += 1
  end

  ################# SUBSCRIPTIONS ###############
  sylwia_slack = Subscription.create!(name: "Slack", user_id: sylwia.id)
  sylwia_google = Subscription.create!(name: "Google", user_id: sylwia.id)
  joel_slack = Subscription.create!(name: "Slack", user_id: joel.id)


  ################# EVENTS ###############
  # day = MonthDay.find{|md| md.month.id == 7 && md.day.id == 9}

  radio = Event.create!(title_eng: "Eleanor Roosevelt on the radio!", title_pl: "Eleanor Roosevelt w radiu!", description_eng: "Eleanor Roosevelt gave first radio interview - she advocted for less violent tv as violent images impact children.", description_pl: "Eleanor Roosevelt po raz pierwszy wystąpiła w radiu, gdzie rozmawiała o efektach filmów na dzieci i potrzebie wprowadzenia cenzury filmów, które gloryfikują przestępstwa i przemoc.", mmddyyy: "19340709", year_era_id: 1934, month_id: 7, day_id: 9, month_day_id: 191, read_more_eng: "https://www.nytimes.com/1934/07/10/archives/movies-discussed-by-mrs-roosevelt-in-debut-as-radio-news.html?searchResultPosition=1", read_more_pl: "https://www.nytimes.com/1934/07/10/archives/movies-discussed-by-mrs-roosevelt-in-debut-as-radio-news.html?searchResultPosition=1", place_id: nyc.id, country_id: usa.id)

  nwpc = Event.create!(title_eng: "300 women started National Women's Political Caucus (NWPC)", title_pl: "Trzysta Amerykanek założyło w USA National Women's Political Caucus (NWPC)", description_eng: "National Women's Political Caucus (NWPC) was founded by over 300 women including Gloria Steinem, Bella Abzug, Betty Friedan, Shirley Chisholm, and Myrlie Evers-Williams.", description_pl: "Wśród nich były: Gloria Steinem, Bella Abzug, Betty Friedan, Shirley Chisholm i Myrlie Evers-Williams.", mmddyyy: "19710711", year_era_id: 1971, month_id: 7, day_id: 11, month_day_id: 193, read_more_eng: " ", read_more_pl: " ", place_id: nyc.id, country_id: usa.id)

  ms = Event.create!(title_eng: "The first Ms. Magazine issue is published!", title_pl: "Pierwsze wydanie Ms. Magazine", description_eng: "Gloria Steinem and Dorothy Pitman Hughes published Ms. Magazine as an insert in New York Magazine. The cover depicts a woman resembling an Indian goddess, with blue skin and eight arms, holding a clock, skillet, typewriter, rake, mirror, telephone, steering wheel, and an iron. 300,000 test copies of the magazine sold out in three days, and generated 26,000 subscription orders within the next few weeks. Gloria Steinem and Letty Cottin Pogrebin co-founded Ms.Magazine in 1972, during the Second-Wave feminist movement. At the time Ms. was first published, much of the feminist movement was driven toward fighting against the social and family-life norms expected of women.", description_pl: " ", mmddyyy: "19711201", year_era_id: 1971, month_id: 12, day_id: 1, month_day_id: 336, read_more_eng: "https://en.wikipedia.org/wiki/Ms._(magazine)", read_more_pl: "https://pl.wikipedia.org/wiki/Ms.", place_id: nyc.id, country_id: usa.id)

  village_vanguard_makeba = Event.create!(title_eng: "Miriam Makeba debuted in Village Vanguard", title_pl: "Tu nic nie ma Miriam Makeba.", description_eng: "She sang in Xhosa and Zulu, and performed a Yiddish folk song. Her audience at this concert included Miles Davis and Duke Ellington; her performance received strongly positive reviews from critics. She first came to popular and critical attention in jazz clubs, after which her reputation grew rapidly.", description_pl: " ", mmddyyy: "19590712", year_era_id: 1959, month_id: 7, day_id: 12, month_day_id: 109, read_more_eng: "https://en.wikipedia.org/wiki/Martha_Graham", read_more_pl: "https://pl.wikipedia.org/wiki/Martha_Graham", country_id: usa.id)


  hkd = Event.create!(title_eng: "National Helen Keller Day", title_pl: "USA obchodzi Narodowy Dzień Hellen Kellar", description_eng: "Helen Keller Day is a commemorative holiday to celebrate the birth of Helen Keller, observed on June 27 annually. The holiday observance was created by presidential proclamation in 1980, as well as by international organizations, particularly those helping the blind and the deaf. The holiday is generally known for its fashion show held on June 27 annually for fundraising purposes.", description_pl: " ", mmddyyy: "19711201", year_era_id: 1960, month_id: 6, day_id: 27, month_day_id: 179, read_more_eng: "https://en.wikipedia.org/wiki/Helen_Keller_Day", read_more_pl: "https://en.wikipedia.org/wiki/Helen_Keller_Day", country_id: usa.id)

  raisin = Event.create!(title_eng: "Lorraine Hansberry's play opens on Broadway making her first African American woman to be produced there.", title_pl: "USA obchodzi Narodowy Dzień Hellen Kellar", description_eng: "Opening on March 11, 1959, A Raisin in the Sun became the first play written by an African American woman to be produced on Broadway. The 29-year-old author became the youngest American playwright and only the fifth woman to receive the New York Drama Critics Circle Award for Best Play. Over the next two years, Raisin was translated into 35 languages and was being performed all over the world", description_pl: " ", mmddyyy: "19590301", year_era_id: 1959, month_id: 3, day_id: 1, month_day_id: 71, read_more_eng: "https://en.wikipedia.org/wiki/Lorraine_Hansberry", read_more_pl: "https://pl.wikipedia.org/wiki/Lorraine_Hansberry", country_id: usa.id)

  not_guilty_angela = Event.create!(title_eng: "A trial to determine Angela Davis' involvement in murder was brought to end.", title_pl: "Tu nic nie ma - Angela Davis.", description_eng: "In August 1970 Angela Davis was charged with 'aggravated kidnapping and first degree murder' and was considered a dangerous terrorist by President Nixon. She was incarcerated for 16 months, which gave rise to a global movement to demand her freedom, which involved John Lennon, Yoko Ono and the Rolling Stones. On June 4, 1972, after 13 hours of deliberations, the all-white jury returned a verdict of not guilty following her moving testimony.", description_pl: " ", mmddyyy: "19720604", year_era_id: 1972, month_id: 6, day_id: 4, month_day_id: 156, read_more_eng: "https://en.wikipedia.org/wiki/Angela_Davis", read_more_pl: "https://pl.wikipedia.org/wiki/Angela_Davis", country_id: usa.id)

  stonewall_riots = Event.create!(title_eng: "Stonewall Uprising took place in NYC", title_pl: "Tu nic nie ma Stonewall.", description_eng: "In August 1970 Angela Davis was charged with 'aggravated kidnapping and first degree murder' and was considered a dangerous terrorist by President Nixon. She was incarcerated for 16 months, which gave rise to a global movement to demand her freedom, which involved John Lennon, Yoko Ono and the Rolling Stones. On June 4, 1972, after 13 hours of deliberations, the all-white jury returned a verdict of not guilty following her moving testimony.", description_pl: " ", mmddyyy: "19720604", year_era_id: 1969, month_id: 6, day_id: 28, month_day_id: 180, read_more_eng: "https://en.wikipedia.org/wiki/Angela_Davis", read_more_pl: "https://pl.wikipedia.org/wiki/Angela_Davis", country_id: usa.id)

  martha_school = Event.create!(title_eng: "Martha Graham Center of Contemporary Dance opens its door", title_pl: "Tu nic nie ma Martha Graham.", description_eng: "The Martha Graham Dance Company is the oldest dance company in America, founded in 1926. It has helped develop many famous dancers and choreographers of the 20th and 21st centuries including Erick Hawkins, Anna Sokolow, Merce Cunningham, Lila York, and Paul Taylor.", description_pl: " ", mmddyyy: "19290604", year_era_id: 1969, month_id: 4, day_id: 18, month_day_id: 109, read_more_eng: "https://en.wikipedia.org/wiki/Martha_Graham", read_more_pl: "https://pl.wikipedia.org/wiki/Martha_Graham", country_id: usa.id)

  polonium = Event.create!(title_eng: "Maria Skłodowska-Curie announces her discovery", title_pl: "Tu nic nie ma Maria Skłodowska-Curie.", description_eng: "Maria Skłodowska-Curie and her husband published a joint paper announcing the existence of an element which they named 'polonium', in honour of her native Poland", description_pl: " ", mmddyyy: "19590712", year_era_id: 1898, month_id: 7, day_id: 11, month_day_id: 193, read_more_eng: "https://en.wikipedia.org/wiki/Marie_Curie", read_more_pl: "https://pl.wikipedia.org/wiki/Maria_Skłodowska-Curie", country_id: poland.id)


  ################# JOINTS ###############
  Tsu.create!(type_id: women.id, subscription_id: sylwia_slack.id)
  Tsu.create!(type_id: queer.id, subscription_id: sylwia_slack.id)
  Tsu.create!(type_id: queer.id, subscription_id: joel_slack.id)

  Et.create!(event_id: village_vanguard_makeba.id, type_id: 1)
  Ep.create!(event_id: village_vanguard_makeba.id, person_id: miriam.id)
  Ep.create!(event_id: polonium.id, person_id: maria.id)
  Et.create!(event_id: polonium.id, type_id: 1)
  Et.create!(event_id: stonewall_riots.id, type_id: 2)
  Ep.create!(event_id: stonewall_riots.id, person_id: marsha.id)
  Ep.create!(event_id: stonewall_riots.id, person_id: storme.id)
  Et.create!(event_id: radio.id, type_id: women.id)
  Et.create!(event_id: not_guilty_angela.id, type_id: 1)
  Ep.create!(event_id: not_guilty_angela.id, person_id: angela.id)
  Ep.create!(event_id: martha_school.id, person_id: martha.id)
  Et.create!(event_id: martha_school.id, type_id: 1)
  Et.create!(event_id: nwpc.id, type_id: 1)
  Et.create!(event_id: ms.id, type_id: 1)
  Ep.create!(event_id: ms.id, person_id: gloria.id)
  Ep.create!(event_id: ms.id, person_id: dorothy.id)
  Et.create!(event_id: hkd.id, type_id: 1)
  Ep.create!(event_id: hkd.id, person_id: hellen.id)
  Et.create!(event_id: raisin.id, type_id: 1)
  Ep.create!(event_id: raisin.id, person_id: lorraine.id)
  Ep.create!(event_id: nwpc.id, person_id: gloria.id)
  Ep.create!(event_id: radio.id, person_id: eleanor.id)


  Cp.create!(country_id: usa.id, person_id: miriam.id)
  Cp.create!(country_id: rpa.id, person_id: miriam.id)
  Cp.create!(country_id: usa.id, person_id: dorris.id)
  Cp.create!(country_id: usa.id, person_id: lorena.id)
  Cp.create!(country_id: usa.id, person_id: helen.id)
  Cp.create!(country_id: usa.id, person_id: katherine.id)
  Cp.create!(country_id: poland.id, person_id: maria.id)
  Cp.create!(country_id: france.id, person_id: maria.id)
  Cp.create!(country_id: poland.id, person_id: kazimiera.id)
  Cp.create!(country_id: usa.id, person_id: annie.id)
  Cp.create!(country_id: usa.id, person_id: marsha.id)
  Cp.create!(country_id: usa.id, person_id: storme.id)
  Cp.create!(country_id: usa.id, person_id: martha.id)
  Cp.create!(country_id: usa.id, person_id: angela.id)
  Cp.create!(country_id: usa.id, person_id: dorothy.id)
  Cp.create!(country_id: usa.id, person_id: hellen.id)
  Cp.create!(country_id: usa.id, person_id: wilma.id)
  Cp.create!(country_id: usa.id, person_id: gloria.id)
  Cp.create!(country_id: usa.id, person_id: amelia.id)
  Cp.create!(country_id: usa.id, person_id: eleanor.id)
  Cp.create!(country_id: usa.id, person_id: nina.id)
  Cp.create!(country_id: barb_country.id, person_id: nina.id)
  Cp.create!(country_id: usa.id, person_id: susan.id)
  Cp.create!(country_id: usa.id, person_id: lorraine.id)

  Pp.create!(place_id: martha_school_place.id, person_id: martha.id, description_eng: "The Martha Graham Dance Company is the oldest dance company in America, founded in 1926.")

  Pp.create!(place_id: stonewall_inn.id, person_id: marsha.id, description_eng: "Marsha P. Johnson has been named, along with Zazu Nova and Jackie Hormona, by a number of the Stonewall veterans as being 'three individuals known to have been in the vanguard' of the pushback against the police at the uprising in 1969.")

  Pp.create!(place_id: stonewall_inn.id, person_id: storme.id, description_eng: "The 1969 Stonewall uprising reportedly started after Stormé DeLarverie fought back against the police officer who attempted to arrest her.")

  Pp.create!(place_id: nycacs.id, person_id: dorothy.id, description_eng: "Dorothy Pitman Hughes co-founded the New York City Agency for Child Development in 1972.")

  Pp.create!(place_id: detention_house.id, person_id: angela.id, description_eng: "In 1972 Angela Davis was incarcerated in this facility for her political activism. She was released on a $100,000 bail following a global movement emerged to demand freedom, which involved John Lennon, Yoko Ono and the Rolling Stones.")

  Pp.create!(place_id: lrei.id, person_id: angela.id, description_eng: "Angela DAvis was accepted to an American Friends Service Committee program, one that put black students from the South into integrated schools in the North. It was through this program that she was placed in Elisabeth Irwin High School, otherwise known at the Little Red School House (LREI), here in Greenwich Village. LREI is regarded as NYC’s first progressive school, created in the early 20th century as a joint public-private experiment in progressive education.")

  Pp.create!(place_id: bleecker.id, person_id: lorraine.id, description_eng: "In this house Lorraine Hansberry wrote her famous play 'A Raisin in the Sun'")

  Pp.create!(place_id: cuny.id, person_id: susan.id, description_eng: "Susan Sontag taught philosophy at CUNY from 1960 to 1964")

  Pp.create!(place_id: julliard.id, person_id: nina.id, description_eng: "Nina Simone studied classical piano at Julliard School")

  Pp.create!(place_id: barbados.id, person_id: nina.id, description_eng: "Simone left the US in September 1970, flying to Barbados as she was disappointed that she was not making the Hits like she used to. Upon her arrival back to the US, Simone’s previous protest for the country’s involvement in the Vietnam War meant she was issued with a Warrent for her arrest as she had not paid her taxes. To evade the authorities and prosecution, Simone stayed in Barbados for quite some time.")

  Pp.create!(place_id: village_vanguard.id, person_id: miriam.id, description_eng: "In 1959 Miriam Makeba debuted here with her songs in Xhosa and Zulu.")
