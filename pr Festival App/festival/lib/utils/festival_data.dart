import 'modalpage.dart';

List<Map> globalFestivalData = [
  {
    'country': 'India',
    'festival': 'Diwali - Festival of Lights',
    'description':
        'Diwali - Festival of Lights: Diwali, also known as Deepavali, is one of India\'s most significantfestivals.It symbolizes the victory of light over darkness and good over evil. People celebrate with lamps, fireworks, sweets, and exchanging gifts.',
    'image': '',
  },
  {
    'country': 'India',
    'festival': 'Holi - Festival of Colors',
    'description':
        'Holi - Festival of Colors : Holi is a vibrant and joyous festival where people play with colored powders and water, celebrating the arrival of spring. It\'s a time of fun, music, and communal harmony.',
    'image': '',
  },
  {
    'country': 'India',
    'festival': 'Eid al-Fitr - Islamic Festival',
    'description':
        'Eid al-Fitr - Islamic Festival : Eid al-Fitr marks the end of Ramadan, the Islamic holy month of fasting. It\'s a day of prayers, feasting, and sharing with family and friends.',
    'image': '',
  },
  {
    'country': 'India',
    'festival': 'Durga Puja - Hindu Festival',
    'description':
        'Durga Puja - Hindu Festival : Durga Puja is a celebration of the goddess Durga\'s victory over the buffalo demon Mahishasura. Elaborate decorations, cultural performances, and processions are part of this festival.',
    'image': '',
  },
  {
    'country': 'India',
    'festival': 'Pongal - Tamil Harvest Festival',
    'description':
        'Pongal - Tamil Harvest Festival : Pongal is a harvest festival celebrated in Tamil Nadu, South India. It\'s a time to express gratitude to the sun god for a bountiful harvest and includes cooking a special dish called Pongal.',
    'image': '',
  },
  {
    'country': 'India',
    'festival': 'Raksha Bandhan - Brother-Sister Festival',
    'description':
        'Raksha Bandhan - Brother-Sister Festival : Raksha Bandhan celebrates the bond between brothers and sisters. Sisters tie a protective thread (rakhi) on their brother\'s wrists, and brothers give gifts in return.',
    'image': '',
  },
  {
    'country': 'India',
    'festival': 'Christmas - Christian Festival',
    'description':
        'Christmas - Christian Festival : Christmas commemorates the birth of Jesus Christ. It\'s a time of festive decorations, gift-giving, caroling, and religious services for Christians.',
    'image': '',
  },
  {
    'country': 'India',
    'festival': 'Navaratri - Nine Nights Festival',
    'description':
        'Navaratri - Nine Nights Festival : Navaratri is a Hindu festival celebrated over nine nights. It includes dance, music, fasting, and worship of the goddess Durga and her various forms.',
  },
  {
    'country': 'India',
    'festival': 'Ganesh Chaturthi - Lord Ganesha Festival',
    'description':
        'Ganesh Chaturthi - Lord Ganesha Festival : Ganesh Chaturthi honors the elephant-headed god Ganesha\'s birth. Elaborate statues of Ganesha are worshiped, followed by immersion in water bodies.',
    'image': '',
  },
  {
    'country': 'India',
    'festival': 'Baisakhi - Sikh Harvest Festival',
    'description':
        'Baisakhi - Sikh Harvest Festival : Baisakhi is celebrated by Sikhs to mark the harvesting of crops and the formation of the Khalsa community. It\'s a time of prayer, music, and community service.',
    'image': '',
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
    'image': 'https://images8.alphacoders.com/708/708887.jpg',
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
