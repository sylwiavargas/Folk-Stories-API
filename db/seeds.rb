# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Person.destroy_all
Connection.destroy_all
Continent.destroy_all
Country.destroy_all
Event.destroy_all
Place.destroy_all
Type.destroy_all
Subscription.destroy_all
Cp.destroy_all
Ep.destroy_all
Et.destroy_all
Tsu.destroy_all

################# USERS ###############

sylwia = User.create!(name: "Sylwia", username: "sylwia", password: "sylwia", email: "sylwia@gmail.com", zip: 11237)
joel = User.create!(name: "Joel", username: "jo", password: "123456", email: "jo@gmail.com", zip: 11385)

################# PEOPLE ###############
eleanor_eng = Person.create!(name:"Eleanor Roosevelt", death: 1884, birth: 1962, bio: "Eleanor Roosevelt (1884-1962) was an American human rights activist, diplomat and publicist as well as a first lady. As the chair of the UN Commission on Human Rights, she oversaw the drafting of the Universal Declaration of Human Rights; she fought against racial discrimination.", picture: "https://upload.wikimedia.org/wikipedia/commons/2/22/Eleanor_Roosevelt_portrait_1933.jpg", quote: "It doesn’t matter whom you love – love them with your whole heart!", read_more: "https://en.wikipedia.org/wiki/Eleanor_Roosevelt")

eleanor_pl = Person.create!(name:"Eleanor Roosevelt", death: 1884, birth: 1962, bio: "Eleanor Roosevelt (1884-1962) - amerykańska działaczka na rzecz praw człowieka, dyplomatka i publicystka. Pierwsza dama USA. Jako przewodnicząca Komisji Praw Człowieka w ONZ, współtworzyła Powszechną Deklarację Praw Człowieka. Działała przeciwko dyskryminacji rasowej.", picture: "https://upload.wikimedia.org/wikipedia/commons/2/22/Eleanor_Roosevelt_portrait_1933.jpg", quote: "Nieważne, kogo kochasz - kochaj całym sercem!", read_more: "https://pl.wikipedia.org/wiki/Eleanor_Roosevelt", language: "Polish")

amelia_eng = Person.create!(name:"Amelia Earhart", death: 1897, birth: 1939, bio: "Amelia Earhart (1897-1939) was an American pilot, journalist, poet and feminist activist. She knew she wanted to fly planes since childhood and became the first woman and the second person in the world to fly over the Atlantic ocean.", picture: "https://upload.wikimedia.org/wikipedia/commons/b/b2/Amelia_Earhart_standing_under_nose_of_her_Lockheed_Model_10-E_Electra%2C_small.jpg", quote: "Everyone has oceans to fly, if they have the heart to do it. Is it reckless? Maybe. But what do dreams know of boundaries?", read_more: "https://en.wikipedia.org/wiki/Amelia_Earhart")

amelia_pl = Person.create!(name:"Amelia Earhart", death: 1897, birth: 1939, bio: "Amelia Earhart (1897-1939) - amerykańska pilotka, dziennikarka i poetka; jako pierwsza kobieta i druga osoba na świecie przeleciała samotnie nad oceanem. Działaczka feministyczna.", picture: "https://upload.wikimedia.org/wikipedia/commons/b/b2/Amelia_Earhart_standing_under_nose_of_her_Lockheed_Model_10-E_Electra%2C_small.jpg", quote: "Wiele małych kroczków prowadzi do wielkich marzeń. Nie marudź, po prostu się rusz - raz, dwa, raz, dwa!", read_more: "https://pl.wikipedia.org/wiki/Amelia_Earhart", language: "Polish")

################# CONNECTIONS ###############
Connection.create!(relationship: "romantic", person_one_id: eleanor_eng.id, person_two_id: amelia_eng.id)

Connection.create!(relationship: "romantyczna relacja", person_one_id: eleanor_pl.id, person_two_id: amelia_pl.id)

################# CONTINENTS ###############
north_am = Continent.create!(name: "North America")
europe = Continent.create!(name: "Europe")

################# COUNTRIES ###############
usa = Country.create!(name: "USA", continent_id: north_am.id)

################# PLACES ###############
nyc = Place.create!(name: "New York City", zip: 10001, country_id: usa.id, latitude: 40.7128, longitude: 74.0060)

################# EVENTS ###############
radio_eng = Event.create!(description: "Eleanor Roosevelt gave first radio program - she talked about the effect of movies on children, the need for a censor who could make sure movies did not glorify crime and violence.", date: 19340709, year: 1934, month: 7, day: 9, read_more: "https://www.nytimes.com/1934/07/10/archives/movies-discussed-by-mrs-roosevelt-in-debut-as-radio-news.html?searchResultPosition=1", language: "English", place_id: nyc.id, country_id: usa.id)

radio_pl = Event.create!(description: "Eleanor Roosevelt po raz pierwszy wystąpiła w radiu, gdzie rozmawiała o efektach filmów na dzieci i potrzebie wprowadzenia cenzury filmów, które gloryfikują przestępstwa i przemoc.", date: 19340709, year: 1934, month: 7, day: 9, read_more: "https://www.nytimes.com/1934/07/10/archives/movies-discussed-by-mrs-roosevelt-in-debut-as-radio-news.html?searchResultPosition=1", language: "Polish", place_id: nyc.id, country_id: usa.id)

################# TYPES ###############
women_pl = Type.create!(name: "Kobiety")
women_eng = Type.create!(name: "Women")
queer_pl = Type.create!(name: "Queer")
queer_eng = Type.create!(name: "Queer")

################# SUBSCRIPTIONS ###############
sylwia_slack = Subscription.create!(name: "Slack", user_id: sylwia.id)
sylwia_google = Subscription.create!(name: "Google", user_id: sylwia.id)
joel_slack = Subscription.create!(name: "Slack", user_id: joel.id)

################# JOINTS ###############
Tsu.create!(type_id: women_pl.id, subscription_id: sylwia_slack.id)
Tsu.create!(type_id: queer_pl.id, subscription_id: sylwia_slack.id)
Tsu.create!(type_id: queer_eng.id, subscription_id: joel_slack.id)
Et.create!(event_id: radio_eng.id, type_id: women_eng.id)
Et.create!(event_id: radio_pl.id, type_id: women_pl.id)
Ep.create!(event_id: radio_eng.id, person_id: eleanor_eng.id)
Ep.create!(event_id: radio_pl.id, person_id: eleanor_pl.id)
Cp.create!(country_id: usa.id, person_id: eleanor_eng.id)
Cp.create!(country_id: usa.id, person_id: amelia_eng.id)
Cp.create!(country_id: usa.id, person_id: eleanor_pl.id)
Cp.create!(country_id: usa.id, person_id: amelia_pl.id)
