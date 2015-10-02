# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hotels= Hotel.create([
	{name: "Caesar Salad"
	desciption: "Romaine lettuce, house croutons, parmesian, Caesar dressing"
	type: "salad",
	price: "9.95"
	},
	{name: "Caprese Salad"
	desciption: "Fresh mozzarella, Roma tomato, basil, balsamic vinaigrette, evoo"
	type: "salad",
	price: "10.95"
	},
	{name: "Greek Salad"
	desciption: "Mixed greens, feta cheese, olives, tomatoes, cucumber, lemon, houes vinaigrette"
	type: "salad",
	price: "11.50"
	},
	{name: "Salmon Salad"
	desciption: "Atlantic salmon, mixed greens, tomato, bell pepper, onion, avocado, cucumber, house vinaigrette"
	type: "salad",
	price: "12.95"
	},
	{name: "Roasted Turkey & Avocado BLT"
	desciption: "Roasted turkey, applewood-smoked bacon, lettuce, tomatoes, avocado, mayo, sourdough bread"
	type: "Sandwich",
	price: "14.95"
	},
	{name: "Grilled Cheese"
	desciption: "American cheese, aged gouda, swiss, white bread"
	type: "Sandwich",
	price: "11.95"
	},
	{name: "Italian Sandwich"
	desciption: "Seared steak, smoked turkey breast, ham, salami, swiss cheese, peperoncinis, lettuce, tomatoes, red onions, chipotle aoili, ciabatta bread"
	type: "Sandwich",
	price: "16.95"
	},
	{name: "Roasted Half Chicken"
	desciption: "Roasted half chicken, garlic pea tendrils, garlic mashed potatoes, seasonal vegetables, sauce Robert"
	type: "Land and Sea",
	price: "35.50"
	},
	{name: "Filet Minion"
	desciption: "Beef filet, garlic mashed potatoes, broccolini, bearnaise or peppercorn sauce"
	type: "Land and Sea",
	price: "47.50"
	},
	{name: "Grilled Halibut"
	desciption: "Grilled halibut, cilantro garlic butter, creamed corn"
	type: "Land and Sea",
	price: "36.50"
	},
	{name: "Half-lobster"
	desciption: "Lobster, lemon, butter"
	type: "Land and Sea",
	price: "42.50"
	},
	{name: "Cheesecake"
	desciption: "Creamy old fasioned cheesecake"
	type: "Desert",
	price: "8.95"
	},
	{name: "Chocolate Soufle"
	desciption: "Light chocolate raised soufle, vanilla bean creme"
	type: "Desert",
	price: "11.95"
	},
	{name: "Tirimisu"
	desciption: "Coffee flavored, layered chocolate cake"
	type: "Desert",
	price: "10.95"
	},
	{name: "Sorbet"
	desciption: "Choice of lemon, raspberry, mango sorbet"
	type: "Desert",
	price: "7.50"
	}




])
hotels= Hotel.create([
	{name: 'Caesars Palace', 
	description: 'This classic, Roman-themed casino hotel is on the west side of the Strip between the Bellagio and the Mirage. Elegant rooms are housed in 6 towers and come with WiFi, marble accents and designer bath products; suites add seating areas, dining tables, wet bars and whirlpool tubs. Top-tier suites have amenities such as 90-inch flat-screens, billiard tables, and/or dance floors.', 
	address: '3570 S Las Vegas Blvd, Las Vegas, NV 89109', 
	image_url: 'https://www.caesars.com/content/scaffold_pages/properties/caesars/en/caesars_palace/_jcr_content/cards/card/image.stdimg.uwide.m.cover.jpg/1437518950177.jpg', 
	website_url: 'https://www.caesars.com/caesars-palace', 
	latitude: '36.116219', 
	longitude: '-115.174572'
	},
	{name: 'Planet Hollywood', 
	description: 'Overlooking the Las Vegas Strip, this sprawling high-rise casino resort is a 5-minute walk from the Bellagio fountains and 1.2 miles from Madame Tussauds Las Vegas wax museum. Colorful rooms feature movie memorabilia and flat-screen TVs. Posh suites add separate sitting areas and panoramic views. Some have soaking tubs, walk-in showers, pool tables and hot tubs.', 
	address: '3667 S Las Vegas Blvd, Las Vegas, NV 89109', 
	image_url: 'https://www.caesars.com/content/scaffold_pages/properties/planet_hollywood/en/planet_hollywood/_jcr_content/cards/card/image.stdimg.uwide.m.cover.jpg/1438365138582.jpg', 
	website_url: 'https://www.caesars.com/planet-hollywood', 
	latitude: '36.109695', 
	longitude: '-115.170162'
	},
	{name: 'Harrahs Lake Tahoe', 
	description: 'A 5-minute walk from Tahoe’s main ski gondola, this upscale casino hotel is also a 12-minute walk from Edgewood Tahoe Golf Course. ', 
	address: '15 US-50, Stateline, NV 89449', 
	image_url: 'http://www.tnetnoc.com/public/ANS/Dynaflex/Images/Hotels/TotalTahoe_HarrahsTahoe2_345x225.jpg', 
	website_url: 'https://www.caesars.com/harrahs-tahoe', 
	latitude: '38.960341', 
	longitude: '-119.940629'
	},
	{name: 'Paris Las Vegas', 
	description: 'This French-themed casino hotel with a half-size Eiffel Tower is across the Strip from The Bellagio and a 9-minute walk from a Las Vegas Monorail station.', 
	address: '3655 S Las Vegas Blvd, Las Vegas, NV 89109', 
	image_url: 'https://www.caesars.com/content/scaffold_pages/properties/paris/en/paris_las_vegas/_jcr_content/cards/card/image.stdimg.uwide.m.cover.jpg/1442356410876.jpg', 
	website_url: 'https://www.caesars.com/paris-las-vegas', 
	latitude: '36.112358', 
	longitude: '-115.170221'
	},
	{name: 'Caesars Atlantic City', 
	description: 'With its prominent position on the boardwalk, this sprawling Ancient Rome-themed casino hotel is a 10-minute walk from many dining and gambling venues, 0.6 miles from the convention center and train station, and 1 mile from Steel Pier amusements.', 
	address: '2100 Pacific Ave, Atlantic City, NJ 08401', 
	image_url: 'http://www.tnetnoc.com/public/ANS/Dynaflex/Images/Hotels/TotalTahoe_HarrahsTahoe2_345x225.jpg', 
	website_url: 'https://www.caesars.com/harrahs-tahoe', 
	latitude: '39.354839', 
	longitude: '-74.435707'
	},
	{name: 'Rio All-Suite Hotel & Casino', 
	description: 'Housed in its own tower of the Rio, a busy Brazilian-themed casino resort, these opulent all-suite are a block from the Strip. ', 
	address: '3700 W Flamingo Rd, Las Vegas, NV 89103', 
	image_url: 'https://www.caesars.com/content/scaffold_pages/properties/rio/en/rio_all_suites_hotel/_jcr_content/cards/card/image.stdimg.uwide.m.cover.jpg/1442356070702.jpg', 
	website_url: 'https://www.caesars.com/rio-las-vegas', 
	latitude: '38.960341', 
	longitude: '-119.940629'
	}
])

# Need hotel ID to be manually put in
rooms = Room.create([
	{number: "1000",
	floor: "10",
	tower: "Forum"
	},
	{number: "1010",
	floor: "10",
	tower: "Forum"
	},
	{number: "1020",
	floor: "10",
	tower: "Forum"
	},
	{number: "1030",
	floor: "10",
	tower: "Forum"
	},
	{number: "1040",
	floor: "10",
	tower: "Forum"
	},
	{number: "1050",
	floor: "10",
	tower: "Forum"
	},
	{number: "1100",
	floor: "11",
	tower: "Forum"
	},
	{number: "1110",
	floor: "11",
	tower: "Forum"
	},
	{number: "1120",
	floor: "11",
	tower: "Forum"
	},
	{number: "1130",
	floor: "11",
	tower: "Forum"
	},
	{number: "1140",
	floor: "11",
	tower: "Forum"
	},
	{number: "1150",
	floor: "11",
	tower: "Forum"
	},
	{number: "1200",
	floor: "11",
	tower: "Forum"
	},
	{number: "1210",
	floor: "11",
	tower: "Forum"
	},
	{number: "1220",
	floor: "11",
	tower: "Forum"
	},
	{number: "1230",
	floor: "11",
	tower: "Forum"
	},
	{number: "1240",
	floor: "11",
	tower: "Forum"
	},
	{number: "1250",
	floor: "11",
	tower: "Forum"
	},
	])	
