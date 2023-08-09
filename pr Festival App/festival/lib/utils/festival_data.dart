import 'modalpage.dart';

List<Map> globalFestivalData = [
  {
    'country': 'India',
    'festival': 'Diwali - Festival of Lights',
    'description':
        'Diwali - Festival of Lights: Diwali, also known as Deepavali, is one of India\'s most significantfestivals.It symbolizes the victory of light over darkness and good over evil. People celebrate with lamps, fireworks, sweets, and exchanging gifts.',
    'image': 'data:image/jpeg;base64,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',
  },
  {
    'country': 'India',
    'festival': 'Holi - Festival of Colors',
    'description':
        'Holi - Festival of Colors : Holi is a vibrant and joyous festival where people play with colored powders and water, celebrating the arrival of spring. It\'s a time of fun, music, and communal harmony.',
    'image': 'data:image/jpeg;base64,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',
  },
  {
    'country': 'India',
    'festival': 'Eid al-Fitr - Islamic Festival',
    'description':
        'Eid al-Fitr - Islamic Festival : Eid al-Fitr marks the end of Ramadan, the Islamic holy month of fasting. It\'s a day of prayers, feasting, and sharing with family and friends.',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSihjDHhNFGufgZoj2pgWg9JYP9d87CB4JJPymf-cAYDr2NnqUQWgAefLNyd3AsX0kHr0I&usqp=CAU',
  },
  {
    'country': 'India',
    'festival': 'Durga Puja - Hindu Festival',
    'description':
        'Durga Puja - Hindu Festival : Durga Puja is a celebration of the goddess Durga\'s victory over the buffalo demon Mahishasura. Elaborate decorations, cultural performances, and processions are part of this festival.',
    'image': 'https://t3.ftcdn.net/jpg/02/90/80/26/360_F_290802648_q4OvfmmfGhKJm93SWOqxiKm8IvL7QG46.jpg',
  },
  {
    'country': 'India',
    'festival': 'Pongal - Tamil Harvest Festival',
    'description':
        'Pongal - Tamil Harvest Festival : Pongal is a harvest festival celebrated in Tamil Nadu, South India. It\'s a time to express gratitude to the sun god for a bountiful harvest and includes cooking a special dish called Pongal.',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjBptXS2TS1H7ABSb1eoFLGgBoVuWV_E5gzCQXNQH8GKt3Ag-ZSs-MSIdMvboIWc3XYyY&usqp=CAU',
  },
  {
    'country': 'India',
    'festival': 'Raksha Bandhan - Brother-Sister Festival',
    'description':
        'Raksha Bandhan - Brother-Sister Festival : Raksha Bandhan celebrates the bond between brothers and sisters. Sisters tie a protective thread (rakhi) on their brother\'s wrists, and brothers give gifts in return.',
    'image': 'https://www.shutterstock.com/shutterstock/photos/2180461585/display_1500/stock-vector-indian-brother-and-sister-festival-happy-raksha-bandhan-concept-rakhi-celebration-in-india-festive-2180461585.jpg',
  },
  {
    'country': 'India',
    'festival': 'Christmas - Christian Festival',
    'description':
        'Christmas - Christian Festival : Christmas commemorates the birth of Jesus Christ. It\'s a time of festive decorations, gift-giving, caroling, and religious services for Christians.',
    'image': 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/merry-christmas-background-greetings-design-template-1bc927c946ea6bb3f2234c7a61e3335f_screen.jpg?ts=1668822698',
  },
  {
    'country': 'India',
    'festival': 'Navaratri - Nine Nights Festival',
    'description':
        'Navaratri - Nine Nights Festival : Navaratri is a Hindu festival celebrated over nine nights. It includes dance, music, fasting, and worship of the goddess Durga and her various forms.',
    'image' : 'https://t3.ftcdn.net/jpg/02/86/26/62/360_F_286266242_IlsTNWqpitvVoWp2UE94EQEyu0KQSLSa.jpg'
  },
  {
    'country': 'India',
    'festival': 'Ganesh Chaturthi - Lord Ganesha Festival',
    'description':
        'Ganesh Chaturthi - Lord Ganesha Festival : Ganesh Chaturthi honors the elephant-headed god Ganesha\'s birth. Elaborate statues of Ganesha are worshiped, followed by immersion in water bodies.',
    'image': 'https://jolevents.in/cdn/shop/articles/ganesh_chaturthi_2023_pune.png?v=1687868414&width=1100',
    'image2' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8oXIj3ipb22PCXdtLk_Pz0KcblmxrnOVwDa7eug-OQ5l28PdZpQRxMl6rhe77nUetD8A&usqp=CAU'
  },
  {
    'country': 'India',
    'festival': 'Baisakhi - Sikh Harvest Festival',
    'description':
        'Baisakhi - Sikh Harvest Festival : Baisakhi is celebrated by Sikhs to mark the harvesting of crops and the formation of the Khalsa community. It\'s a time of prayer, music, and community service.',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP6bygjhm1Hy5vW1S0T18N-kWAvV-pj0_Lk6ObPHXKH3yppBrau2b6o1fmD_Vo2LcuNIc&usqp=CAU',
  },
  {
    'country': 'Canada',
    'festival': 'Calgary Stampede',
    'description':
        'Calgary Stampede: Calgary Stampede is a famous rodeo and exhibition held annually in Calgary, Alberta. It features rodeo events, chuckwagon races, concerts, and a carnival atmosphere.',
    'image': '',
  },
  {
    'country': 'Canada',
    'festival': 'Canada Day',
    'description':
        'Canada Day: Canada Day, on July 1st, celebrates the country\'s confederation. It includes fireworks, parades, concerts, and various patriotic activities.',
    'image': '',
  },
  {
    'country': 'Canada',
    'festival': 'Winterlude (Ottawa)',
    'description':
        'Winterlude (Ottawa): Winterlude is a winter festival held in Ottawa, featuring ice sculptures, outdoor skating, snow slides, and cultural performances.',
    'image': '',
  },
  {
    'country': 'Canada',
    'festival': 'Montreal Jazz Festival',
    'description':
        'Montreal Jazz Festival: The Montreal International Jazz Festival is the largest jazz festival in the world. It showcases performances by renowned artists from various genres of music.',
    'image': '',
  },
  {
    'country': 'Canada',
    'festival': 'Toronto International Film Festival',
    'description':
        'Toronto International Film Festival: TIFF is one of the most prestigious film festivals globally, showcasing a diverse range of films and attracting filmmakers and celebrities.',
    'image' : ''
  },
  {
    'country': 'Canada',
    'festival': 'Caribana Festival (Caribbean Carnival)',
    'description':
        'Caribana Festival (Caribbean Carnival): Caribana is a vibrant Caribbean carnival celebrated in Toronto. It includes colorful parades, Caribbean music, dancing, and cultural exhibitions.',
    'image': '',
  },
  {
    'country': 'Canada',
    'festival': 'Fête nationale du Québec',
    'description':
        'Fête nationale du Québec: Fête nationale, also known as Saint-Jean-Baptiste Day, is a celebration of Quebec\'s culture and identity. It includes parades, concerts, and traditional Québécois activities.',
    'image': '',
  },
  {
    'country': 'Canada',
    'festival': 'Canadian Tulip Festival',
    'description':
        'Canadian Tulip Festival: The Canadian Tulip Festival in Ottawa features millions of tulips in bloom, a symbol of friendship between Canada and the Netherlands.',
      'image' : ''
  },
  {
    'country': 'Canada',
    'festival': 'Canada\'s Wonderland (Fireworks Festival)',
    'description':
        'Canada\'s Wonderland (Fireworks Festival): Canada\'s Wonderland amusement park hosts spectacular fireworks displays during special events, lighting up the night sky with vibrant colors.',
    'image': '',
  },
  {
    'country': 'Canada',
    'festival': 'Edmonton Folk Music Festival',
    'description':
        'Edmonton Folk Music Festival: The Edmonton Folk Music Festival is known for its diverse lineup of folk and world music artists performing in a scenic outdoor setting.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'Cape Town International Jazz Festival',
    'description':
        'Cape Town International Jazz Festival: This jazz festival in Cape Town showcases a lineup of local and international jazz artists, attracting music enthusiasts from around the world.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'AfrikaBurn (Burning Man Event)',
    'description':
        'AfrikaBurn (Burning Man Event): AfrikaBurn is a regional Burning Man event held in the Tankwa Karoo desert. It\'s a participatory arts and culture festival that emphasizes self-expression and community.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'Durban July (Horse Racing Event)',
    'description':
        'Durban July (Horse Racing Event): The Durban July is a prestigious horse racing event held in Durban, South Africa. It\'s a mix of fashion, entertainment, and horse racing excitement.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'National Arts Festival',
    'description':
        'National Arts Festival: The National Arts Festival in Grahamstown (Makhanda) is one of the largest arts festivals in Africa, featuring theater, dance, visual arts, music, and more.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'Knysna Oyster Festival',
    'description':
        'Knysna Oyster Festival: The Knysna Oyster Festival celebrates the famous Knysna oysters with a variety of events, including oyster tastings, live music, and sports activities.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'OppiKoppi (Music Festival)',
    'description':
        'OppiKoppi (Music Festival): OppiKoppi is an annual music festival that takes place in the Limpopo province. It features a diverse lineup of South African and international musicians.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'Kwanzaa (Cape Town Street Festival)',
    'description':
        'Kwanzaa (Cape Town Street Festival): Kwanzaa is a street festival in Cape Town celebrating African heritage and culture through music, dance, food, and various activities.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'Joy of Jazz Festival (Johannesburg)',
    'description':
        'Joy of Jazz Festival (Johannesburg): The Joy of Jazz Festival is a prominent jazz event in Johannesburg, bringing together local and international jazz artists for performances.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'Vredefort Koepel Fees (Music and Arts Festival)',
    'description':
        'Vredefort Koepel Fees (Music and Arts Festival): The Vredefort Koepel Fees is a music and arts festival held in Parys, Free State. It features live music, art exhibitions, and family-friendly activities.',
    'image': '',
  },
  {
    'country': 'South Africa',
    'festival': 'Hermanus Whale Festival',
    'description':
        'Hermanus Whale Festival: The Hermanus Whale Festival celebrates the arrival of Southern Right Whales along the coast of Hermanus. It includes whale watching, live music, and arts and crafts.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Maslenitsa (Butter Week)',
    'description':
        'Maslenitsa (Butter Week): Maslenitsa is a week-long festival before Lent, known for its blini (pancake) feasts, traditional games, and folk performances.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Victory Day (May 9th)',
    'description':
        'Victory Day (May 9th): Victory Day commemorates the Soviet Union\'s victory over Nazi Germany in World War II. It includes military parades, ceremonies, and festivities.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'White Nights Festival',
    'description':
        'White Nights Festival: The White Nights Festival celebrates the phenomenon of the "White Nights" in St. Petersburg, where the sun barely sets. It features cultural events, concerts, and fireworks.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Russian Orthodox Christmas',
    'description':
        'Russian Orthodox Christmas: Russian Orthodox Christmas is celebrated on January 7th with religious services, festive meals, and traditional customs.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Easter (Paskha)',
    'description':
        'Easter (Paskha): Easter is a significant religious holiday in Russia, celebrated with church services, egg decorating, and festive meals.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Ivan Kupala Day',
    'description':
        'Ivan Kupala Day: Ivan Kupala Day is a summer solstice celebration with roots in Slavic paganism. It involves bonfires, jumping over fires for purification, and searching for the mythical fern flower.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Day of the Defender of the Fatherland',
    'description':
        'Day of the Defender of the Fatherland: This holiday honors military personnel and veterans. It\'s a day of parades, military displays, and patriotic celebrations.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Moscow International Film Festival',
    'description':
        'Moscow International Film Festival: The Moscow International Film Festival is one of the oldest film festivals in the world, showcasing international films and attracting filmmakers and celebrities.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Moscow International Book Fair',
    'description':
        'Moscow International Book Fair: The Moscow International Book Fair is a major literary event where publishers, authors, and book enthusiasts gather to promote literature and culture.',
    'image': '',
  },
  {
    'country': 'Russia',
    'festival': 'Festival of Street Theatres',
    'description':
        'Festival of Street Theatres: This festival celebrates street theatre and performance art in Russia, featuring outdoor performances, mime, puppetry, and interactive shows.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'Australia Day',
    'description':
        'Australia Day: Australia Day, on January 26th, celebrates the country\'s national identity and culture. It includes citizenship ceremonies, barbecues, and fireworks.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'Melbourne Cup Carnival',
    'description':
        'Melbourne Cup Carnival: The Melbourne Cup Carnival is a prestigious horse racing event held in November, highlighted by the Melbourne Cup race. It\'s known for its fashion and social festivities.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'Sydney Festival',
    'description':
        'Sydney Festival: The Sydney Festival is a major cultural event featuring a diverse range of performances, including music, theater, dance, and visual arts.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'ANZAC Day',
    'description':
        'ANZAC Day: ANZAC Day, on April 25th, commemorates Australian and New Zealand soldiers who served in wars and conflicts. Dawn services, parades, and remembrance ceremonies are held.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'NAIDOC Week (Indigenous Celebration)',
    'description':
        'NAIDOC Week (Indigenous Celebration): NAIDOC Week celebrates the history, culture, and achievements of Aboriginal and Torres Strait Islander peoples. It includes cultural events, workshops, and exhibitions.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'Vivid Sydney (Light Festival)',
    'description':
        'Vivid Sydney (Light Festival): Vivid Sydney is a light and music festival that transforms the city with light installations, projections, and performances.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'Bathurst 1000 (Car Racing Event)',
    'description':
        'Bathurst 1000 (Car Racing Event): The Bathurst 1000 is a legendary touring car race held at Mount Panorama Circuit. It\'s a significant event for motorsport enthusiasts.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'Royal Easter Show',
    'description':
        'Royal Easter Show: The Royal Easter Show is a large agricultural and entertainment event in Sydney, featuring livestock exhibitions, rides, entertainment, and food.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'National Multicultural Festival',
    'description':
        'National Multicultural Festival: The National Multicultural Festival in Canberra celebrates Australia\'s cultural diversity with food stalls, performances, and cultural displays from various communities.',
    'image': '',
  },
  {
    'country': 'Australia',
    'festival': 'Splendour in the Grass (Music Festival)',
    'description':
        'Splendour in the Grass (Music Festival): Splendour in the Grass is a popular music and arts festival held in Byron Bay. It features a lineup of local and international music acts.',
    'image': '',
  },
  {
    'country': 'Mexico',
    'festival': 'Día de los Muertos (Day of the Dead)',
    'description':
        'Día de los Muertos (Day of the Dead) : Day of the Dead is a vibrant celebration honoring deceased loved ones. Families create ofrendas (altars) with offerings, flowers, and sugar skulls.',
    'image': '',
  },
  {
    'country': 'Mexico',
    'festival': 'Guelaguetza',
    'description':
        'Guelaguetza : Guelaguetza is a cultural festival in Oaxaca, showcasing the diversity of indigenous communities through dance, music, and traditional costumes.',
    'image': '',
  },
  {
    'country': 'Mexico',
    'festival': 'Feria de San Marcos',
    'description':
        'Feria de San Marcos : The Feria de San Marcos is one of Mexico\'s most famous and oldest fairs, celebrated in the city of Aguascalientes. It combines a traditional fair atmosphere with cultural events, rodeos, bullfights, concerts, exhibitions, and carnival rides.',
    'image': '',
  },
  {
    'country': 'Mexico',
    'festival': 'Semana Santa (Holy Week)',
    'description':
        'Semana Santa (Holy Week) : Semana Santa is a significant religious observance leading up to Easter, marked by processions, passion plays, and religious ceremonies.',
    'image': '',
  },
  {
    'country': 'Mexico',
    'festival': 'Cinco de Mayo',
    'description':
        'Cinco de Mayo : Cinco de Mayo commemorates the Mexican victory over French forces. It\'s celebrated with parades, traditional music, and regional cuisine.',
    'image': '',
  },
  {
    'country': 'Mexico',
    'festival': 'Las Posadas',
    'description':
        'Las Posadas : Las Posadas is a nine-day Christmas tradition reenacting Mary and Joseph\'s search for lodging. It involves processions, caroling, and breaking piñatas.',
    'image': '',
  },
  {
    'country': 'Mexico',
    'festival': 'Dia de la Candelaria',
    'description':
        'Dia de la Candelaria : Dia de la Candelaria follows the Epiphany and involves religious processions, feasting, and tamales.',
    'image':
        'https://www.kuodatravel.com/wp-content/uploads/2016/10/Other-Activities-to-Explore-in-Puno.jpg',
  },
  {
    'country': 'Mexico',
    'festival': 'Dia de la Revolución (Revolution Day)',
    'description':
        'Dia de la Revolución (Revolution Day) : Dia de la Revolución honors the Mexican Revolution of 1910. Parades, historical exhibitions, and festivities take place nationwide.',
    'image':
        'https://pulsosanluisrm.blob.core.windows.net/images/2019/11/20/91120055.jpg',
  },
  {
    'country': 'Mexico',
    'festival': 'Dia de la Independencia (Independence Day)',
    'description':
        'Dia de la Independencia (Independence Day) : Dia de la Independencia celebrates Mexico\'s independence from Spanish rule. It\'s marked by patriotic parades, speeches, and fireworks.',
    'image':
        'https://s-media-cache-ak0.pinimg.com/736x/81/74/60/8174602111838e843cb26480893766f2.jpg',
  },
  {
    'country': 'Mexico',
    'festival': 'Dia de la Virgen de Guadalupe',
    'description':
        'Dia de la Virgen de Guadalupe : Dia de la Virgen de Guadalupe commemorates the appearance of the Virgin Mary to Juan Diego. Pilgrimages, processions, and church services are held to honor Mexico\'s patron saint.',
    'image':
        'https://www.eluniversal.com.mx/resizer/wnyMpyw_CzFNFmnd_Y0NZ8PTbFM=/1100x666/cloudfront-us-east-1.images.arcpublishing.com/eluniversal/SPWCFLFA4NC3VIF3CNSLMOBRHY.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Venice Carnival',
    'description':
        'Venice Carnival : Venice Carnival is known for its elaborate masks and costumes. It features masquerade balls, parades, and cultural events.',
    'image':
        'https://www.sopranovillas.com/blog/wp-content/uploads/2017/09/venezia-carnevala-featured.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Palio di Siena',
    'description':
        'Palio di Siena: The Palio di Siena is a historic horse race held in Siena\'s Piazza del Campo. It\'s a fiercely competitive event between the city\'s neighborhoods.',
    'image':
        'https://mulberrytravel-1d41c.kxcdn.com/wp-content/uploads/palio-di-siena.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Carnevale di Ivrea (Battle of Oranges)',
    'description':
        'Carnevale di Ivrea (Battle of Oranges) : Carnevale di Ivrea involves a unique orange-throwing battle symbolizing a historic revolt. Participants divide into "teams" and engage in a friendly fruit fight.',
    'image': 'https://img2.rtve.es/imagenes/carnaval-ivrea/1613057253408.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Festa della Sensa (Marriage to the Sea)',
    'description':
        'Festa della Sensa (Marriage to the Sea) : Festa della Sensa celebrates Venice\'s maritime heritage with a symbolic "marriage" of the city to the sea. A regatta and ceremonies take place on the waters.',
    'image':
        'https://www.italymagazine.com/sites/default/files/feature-story/gallery/boat-festa-della-sensa.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Infiorata di Noto',
    'description':
        'Infiorata di Noto : Infiorata di Noto is a flower festival in Sicily where streets are adorned with intricate and colorful floral designs. It\'s a beautiful visual display.',
    'image':
        'https://www.sicilydaybyday.com/wp-content/uploads/2019/04/noto_infiorata.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Feast of San Gennaro',
    'description':
        'Feast of San Gennaro : The Feast of San Gennaro in Naples honors the city\'s patron saint with religious processions, food stalls, and celebrations.',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTop4cARNU3gAjeS-3fTZASEJBWh2csD7EYNtl6-b7Eke9Nd9J6Y453mQfl8aqkuUbZ_Nc&usqp=CAU',
  },
  {
    'country': 'Italy',
    'festival': 'Calcio Storico (Historical Football)',
    'description':
        'Calcio Storico (Historical Football) : Calcio Storico is an ancient form of football played in Florence. Teams from different neighborhoods compete in this historic sport.',
    'image':
        'https://www.walksinsideflorence.it/image/events/florentine_football.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Regata Storica',
    'description':
        'Regata Storica : Regata Storica is a historic boat race held in Venice. It features ornate boats and gondoliers in period costumes rowing along the Grand Canal.',
    'image':
        'https://i.pinimg.com/originals/7c/85/2f/7c852f56d6a8d273cd11d82a1b2e15f5.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Umbria Jazz Festival',
    'description':
        'Umbria Jazz Festival : Umbria Jazz Festival is one of Italy\'s most important jazz events, featuring renowned musicians performing in various historic locations in Perugia.',
    'image':
        'https://www.carnifest.com/wp-content/uploads/2018/10/Umbria_Jazz_Festival.jpg',
  },
  {
    'country': 'Italy',
    'festival': 'Festival dei Due Mondi (Festival of Two Worlds)',
    'description':
        'Festival dei Due Mondi (Festival of Two Worlds) : Festival dei Due Mondi in Spoleto is an annual multidisciplinary arts festival featuring music, dance, theater, and visual arts.',
    'image':
        'https://m-festival.biz/en/wp-content/uploads/2017/06/47361468_10155521377106920_3695469198114291712_O.jpeg',
  },
  {
    'country': 'Brazil',
    'festival': 'Carnival',
    'description':
        'Carnival : Carnival is Brazil\'s most famous festival, known for its extravagant parades, samba music, and vibrant costumes. It takes place before Lent and is celebrated nationwide.',
    'image': 'https://st2.depositphotos.com/3742757/5828/v/950/depositphotos_58288577-stock-illustration-brazilian-carnival.jpg',
  },
  {
    'country': 'Brazil',
    'festival': 'Festa Junina (June Festival)',
    'description':
        'Festa Junina (June Festival) : Festa Junina celebrates rural traditions with dance, music, and food. People dress in traditional outfits and enjoy bonfires, quadrilha dances, and typical treats.',
    'image':
        'https://c8.alamy.com/comp/HH5G8G/people-in-country-costumes-perform-festa-junina-or-in-english-june-HH5G8G.jpg',
  },
  {
    'country': 'Brazil',
    'festival': 'Lavagem do Bonfim',
    'description':
        'Lavagem do Bonfim : Lavagem do Bonfim is a Bahian festival in Salvador that involves washing the steps of the Bonfim Church as a gesture of devotion and purification.',
    'image':
        'https://www.salvadordabahia.com/wp-content/uploads/2017/11/bonfim-media-resolucao-2017-133-1024x683.jpg',
  },
  {
    'country': 'Brazil',
    'festival': 'Parintins Festival',
    'description':
        'Parintins Festival : Parintins Festival is a colorful and competitive event held in Amazonas. It features the Boi-Bumbá folklore, with elaborate costumes, music, and performances.',
    'image':
        'https://cxgveiouca.cloudimg.io/familyhotelfinder.com/wp-content/uploads/Amazon-Boi-Bumba-Festival1-SH.jpg?w=960&h=540&func=cover',
  },
  {
    'country': 'Brazil',
    'festival': 'Bumba Meu Boi',
    'description':
        'Bumba Meu Boi : Bumba Meu Boi is a cultural tradition celebrated in various Brazilian states. It involves theatrical performances, music, and dancing, often retelling the story of a resurrected ox.',
    'image':
        'https://www.shutterstock.com/shutterstock/photos/201351098/display_1500/stock-photo-parintins-amazonas-brazil-july-boi-bumba-brazil-s-largest-folklore-festival-201351098.jpg',
  },
  {
    'country': 'Brazil',
    'festival': 'Semana Santa (Holy Week)',
    'description':
        'Semana Santa (Holy Week) : Semana Santa, or Holy Week, is observed with religious processions, passion plays, and church services leading up to Easter.',
    'image':
        'https://www.culturedchef.com/wp-content/uploads/2020/06/shutterstock_601430084.jpg',
  },
  {
    'country': 'Brazil',
    'festival': 'Folia de Reis (Epiphany Celebration)',
    'description':
        'Folia de Reis (Epiphany Celebration) : Folia de Reis is a traditional Epiphany celebration that involves singing, dancing, and visiting homes to celebrate the journey of the Three Wise Men.',
    'image':
        'https://thumbs.dreamstime.com/b/their-colorful-costumes-revelers-kings-celebrate-aparecida-do-norte-aparecida-do-norte-sao-paulo-brazil-october-folia-271572129.jpg',
  },
  {
    'country': 'Brazil',
    'festival': 'Yemanjá Festival',
    'description':
        'Yemanjá Festival : Yemanjá Festival in Bahia honors the goddess Yemanjá, associated with the sea. Offerings are made to the goddess, and boats carry gifts to the ocean.',
    'image':
        'https://www.saveur.com/uploads/2019/03/18/7PFED22XJ62XKXHRRSTULYHOKU.jpg',
  },
  {
    'country': 'Brazil',
    'festival': 'Cirio de Nazaré',
    'description':
        'Cirio de Nazaré : Círio de Nazaré is a massive Catholic procession in Belém, Pará, honoring Our Lady of Nazaré. It\'s one of Brazil\'s largest religious events.',
    'image':
        'https://viagemeturismo.abril.com.br/wp-content/uploads/2017/02/tyba_cd277_284_2-e1487622956937.jpg?quality=90&strip=info&w=1280&h=720&crop=1',
  },
  {
    'country': 'Brazil',
    'festival': 'Festas do Divino Espírito Santo',
    'description':
        'Festas do Divino Espírito Santo : Festas do Divino Espírito Santo are religious and cultural events held across Brazil, celebrating the Holy Spirit with parades, feasts, and charity.',
    'image':
        'https://www.shutterstock.com/image-photo/tomar-portugal-july-8-2023-street-2331606829',
  },
  {
    'country': 'Japan',
    'festival': 'Sakura Matsuri (Cherry Blossom Festival)',
    'description':
        'Sakura Matsuri (Cherry Blossom Festival) : Sakura Matsuri celebrates the arrival of cherry blossoms in spring. Hanami (flower viewing) parties are held under blooming cherry trees.',
    'image':
        'https://www.shutterstock.com/image-photo/tourists-stroll-temporary-market-stop-by-1928001236',
  },
  {
    'country': 'Japan',
    'festival': 'Tanabata (Star Festival)',
    'description':
        'Tanabata (Star Festival) : Tanabata celebrates the meeting of the deities Orihime and Hikoboshi, represented by the stars Vega and Altair. People write wishes on colorful strips of paper (tanzaku).',
    'image': 'https://www.japan-guide.com/g18/5158_03.jpg',
  },
  {
    'country': 'Japan',
    'festival': 'Gion Matsuri (Kyoto Festival)',
    'description':
        'Gion Matsuri (Kyoto Festival) : Gion Matsuri is one of Japan\'s most famous festivals, featuring massive floats, processions, and traditional performances in the city of Kyoto.',
    'image':
        'https://dskyoto.s3.amazonaws.com/gallery/full/4214/5758/7757/08-20140717_GionMatsuri_Junko-813.jpg',
  },
  {
    'country': 'Japan',
    'festival': 'Obon (Festival of the Dead)',
    'description':
        'Obon (Festival of the Dead) : Obon is a Buddhist festival honoring deceased ancestors. Lanterns are lit to guide ancestral spirits, and traditional dances (bon odori) are performed.',
    'image':
        'https://savvytokyo.scdn3.secure.raxcdn.com/app/uploads/2020/08/What-Is-Obon-A-Guide-To-The-Japanese-Halloween.jpg',
  },
  {
    'country': 'Japan',
    'festival': 'Setsubun (Bean-Throwing Festival)',
    'description':
        'Setsubun (Bean-Throwing Festival) : Setsubun is a day before the beginning of spring in Japan. People throw roasted soybeans to drive away evil spirits and bring good luck.',
    'image':
        'https://previews.agefotostock.com/previewimage/medibigoff/e3ae1e5541d6b06bd3f9f9bab43a16b5/z71-2636131.jpg',
  },
  {
    'country': 'Japan',
    'festival': 'Shichi-Go-San (Children\'s Festival)',
    'description':
        'Shichi-Go-San (Children\'s Festival) : Shichi-Go-San is a festival celebrating the growth of children at ages three, five, and seven. Families dress children in traditional attire and visit shrines.',
    'image':
        'https://www.japan-experience.com/sites/default/files/images/content_images/75320181.jpg',
  },
  {
    'country': 'Japan',
    'festival': 'Hanami (Flower Viewing)',
    'description':
        'Hanami (Flower Viewing) : Hanami is the Japanese tradition of appreciating cherry blossoms. People gather in parks for picnics and parties beneath the blooming trees.',
    'image':
        'https://c8.alamy.com/comp/BBW0EB/people-enjoying-a-spring-picnic-under-blossoming-cherry-trees-for-BBW0EB.jpg',
  },
  {
    'country': 'Japan',
    'festival': 'Awa Odori (Dance Festival)',
    'description':
        'Awa Odori (Dance Festival) : Awa Odori is a dance festival held in Tokushima Prefecture. Participants, including locals and tourists, dance through the streets to the beat of drums and flutes.',
    'image':
        'https://wattention.com/wp-content/uploads/2015/07/Awa-Odori-Japan%E2%80%99s-Biggest-Dance-Festival1.jpeg',
  },
  {
    'country': 'Japan',
    'festival': 'Sapporo Snow Festival',
    'description':
        'Sapporo Snow Festival : Sapporo Snow Festival features enormous snow and ice sculptures displayed in Sapporo, Hokkaido. It attracts visitors from all over Japan and the world.',
    'image':
        'https://top.his-usa.com/destination-japan/up_img/cke/imgs/2017707/Sapporo%20Snow%20Festival_1.jpg',
  },
  {
    'country': 'Japan',
    'festival': 'Tori no Ichi (Rooster Fair)',
    'description':
        'Tori no Ichi (Rooster Fair) : Tori no Ichi is a series of annual fairs held in November to celebrate good fortune and business success.',
    'image':
        'https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2015/11/shin-tori-0437.jpg',
  },
  {
    'country': 'China',
    'festival': 'Chinese New Year (Spring Festival)',
    'description':
        'Chinese New Year (Spring Festival) : Chinese New Year, also known as the Spring Festival, marks the beginning of the lunar new year. It\'s a time of family reunions, feasting, dragon dances, and fireworks.',
    'image':
        'https://www.agoda.com/wp-content/uploads/2019/01/Chinese-New-Year_Featured-photo_dragon-lantern_Tang-Paradise.jpg',
  },
  {
    'country': 'China',
    'festival': 'Mid-Autumn Festival (Moon Festival)',
    'description':
        'Mid-Autumn Festival (Moon Festival) : The Mid-Autumn Festival celebrates the harvest and the full moon. Families gather to enjoy mooncakes, lanterns, and cultural performances.',
    'image': 'https://media.timeout.com/images/105814968/image.jpg',
  },
  {
    'country': 'China',
    'festival': 'Qingming Festival (Tomb Sweeping Day)',
    'description':
        'Qingming Festival (Tomb Sweeping Day) : Qingming Festival is a day to honor ancestors by visiting their graves and making offerings. It\'s also a time for outdoor activities and enjoying the spring scenery.',
    'image':
        'https://studycli.org/wp-content/uploads/2021/06/5592118588_a96b1bbacc_o.jpg',
  },
  {
    'country': 'China',
    'festival': 'Dragon Boat Festival',
    'description':
        'Dragon Boat Festival : Dragon Boat Festival commemorates the Chinese poet Qu Yuan. Dragon boat races, sticky rice dumplings (zongzi), and colorful flags are integral parts of the celebration.',
    'image':
        'https://th-thumbnailer.cdn-si-edu.com/9qX1b1_qnhO0Zn4Mei98iHnFgGA=/1000x750/filters:no_upscale()/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/Dragon-Boat-Festival-631.jpg',
  },
  {
    'country': 'China',
    'festival': 'Lantern Festival',
    'description':
        'Lantern Festival : The Lantern Festival marks the end of the Chinese New Year festivities. Lantern displays, lion dances, and solving riddles on lanterns are common traditions.',
    'image':
        'https://akm-img-a-in.tosshub.com/indiatoday/images/photogallery/201702/thailand-thumb_022017074325.jpg?VersionId=zTK.DqzEkC3ruGOfa6ZrbMEeBj.Fy2zk',
  },
  {
    'country': 'China',
    'festival': 'Double Seventh Festival (Qixi Festival)',
    'description':
        'Double Seventh Festival (Qixi Festival) : Double Seventh Festival, also known as the Chinese Valentine\'s Day, celebrates the meeting of two lovers, represented by stars Vega and Altair.',
    'image':
        'https://eventperspective.weebly.com/uploads/5/3/3/2/53322603/2758338_orig.jpg',
  },
  {
    'country': 'China',
    'festival': 'Chongyang Festival (Double Ninth Festival)',
    'description':
        'Chongyang Festival (Double Ninth Festival) : Chongyang Festival is also known as the Double Ninth Festival. It\'s a day to climb mountains, appreciate chrysanthemums, and enjoy chrysanthemum wine.',
    'image':
        'https://www.xinhuanet.com/english/2020-10/20/139454558_16031973905031n.jpg',
  },
  {
    'country': 'China',
    'festival': 'Ghost Festival',
    'description':
        'Ghost Festival : Ghost Festival, also known as Hungry Ghost Festival, is a time to honor deceased ancestors. Offerings are made to wandering spirits to ensure their comfort.',
    'image':
        'https://www.dumplingconnection.com/wp-content/uploads/2019/08/PaperMoney.jpg',
  },
  {
    'country': 'China',
    'festival': 'Laba Festival',
    'description':
        'Laba Festival : Laba Festival is a traditional Chinese holiday celebrated on the eighth day of the twelfth lunar month. It involves eating Laba congee, a mixture of rice, beans, and nuts.',
    'image':
        'https://img2.chinadaily.com.cn/images/202001/02/5e0dab60a310cf3e97aecb3b.jpeg',
  },
  {
    'country': 'China',
    'festival': 'Winter Solstice Festival',
    'description':
        'Winter Solstice Festival : Winter Solstice Festival, also known as Dongzhi Festival, marks the arrival of winter and the shortest day of the year. It\'s a time for family gatherings and eating tangyuan (glutinous rice balls).',
    'image':
        'https://www.xinhuanet.com/english/2017-12/21/136843207_15138605845661n.jpg',
  },
];
List<Festival> allFestivals = globalFestivalData
    .map(
      (e) => Festival.fromMap(data: e),
    )
    .toList();

List allCountries = allFestivals.map((e) => e.country).toSet().toList();
