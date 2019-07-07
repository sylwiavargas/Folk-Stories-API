# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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


################# CONNECTIONS ###############
Connection.create!(relationship: "romantic", person_one_id: eleanor.id, person_two_id: amelia.id)

################# CONTINENTS ###############
north_am = Continent.create!(name_eng: "North America", name_pl: "Ameryka Północna")
europe = Continent.create!(name_eng: "Europe", name_pl: "Europa")

################# COUNTRIES ###############
usa = Country.create!(name_eng: "USA", name_pl: "USA", continent_id: north_am.id)

################# PLACES ###############
nyc = Place.create!(name_eng: "New York City", name_pl: "Nowy Jork", zip: 10001, country_id: usa.id, latitude: 40.7128, longitude: -74.0060)

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

################# JOINTS ###############
Tsu.create!(type_id: women.id, subscription_id: sylwia_slack.id)
Tsu.create!(type_id: queer.id, subscription_id: sylwia_slack.id)
Tsu.create!(type_id: queer.id, subscription_id: joel_slack.id)
Et.create!(event_id: radio.id, type_id: women.id)
Ep.create!(event_id: radio.id, person_id: eleanor.id)
Cp.create!(country_id: usa.id, person_id: amelia.id)
Cp.create!(country_id: usa.id, person_id: eleanor.id)


#################### TESTY #################
