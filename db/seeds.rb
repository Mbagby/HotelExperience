# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



hotels= Hotel.create([
	{name: 'Caesars Palace', 
	description: 'This classic, Roman-themed casino hotel is on the west side of the Strip between the Bellagio and the Mirage. Elegant rooms are housed in 6 towers and come with WiFi, marble accents and designer bath products; suites add seating areas, dining tables, wet bars and whirlpool tubs. Top-tier suites have amenities such as 90-inch flat-screens, billiard tables, and/or dance floors.', 
	address: '3570 S Las Vegas Blvd, Las Vegas, NV 89109', 
	image_url: 'https://higherlogicdownload.s3.amazonaws.com/ILTANET/a356d7b9-9127-4be4-ab2a-1476dc148a23/UploadedImages/iltacon15/Pics/caesars3.jpg', 
	website_url: 'https://www.caesars.com/caesars-palace', 
	latitude: '36.116219', 
	longitude: '-115.174572'
	},
	{name: 'Planet Hollywood', 
	description: 'Overlooking the Las Vegas Strip, this sprawling high-rise casino resort is a 5-minute walk from the Bellagio fountains and 1.2 miles from Madame Tussauds Las Vegas wax museum. Colorful rooms feature movie memorabilia and flat-screen TVs. Posh suites add separate sitting areas and panoramic views. Some have soaking tubs, walk-in showers, pool tables and hot tubs.', 
	address: '3667 S Las Vegas Blvd, Las Vegas, NV 89109', 
	image_url: 'http://images.cheapovegas.com/sites/www.cheapovegas.com/files/billboard/planet-hollywood-1_C.jpg', 
	website_url: 'https://www.caesars.com/planet-hollywood', 
	latitude: '36.109695', 
	longitude: '-115.170162'
	}
])

# Need hotel ID to be manually put in
rooms = Room.create([
	{number: "1000"
	floor: "10"
	tower: "Forum"
	}
	{number: "1010"
	floor: "10"
	tower: "Forum"
	}
	{number: "1020"
	floor: "10"
	tower: "Forum"
	}
	{number: "1030"
	floor: "10"
	tower: "Forum"
	}
	{number: "1040"
	floor: "10"
	tower: "Forum"
	}
	{number: "1050"
	floor: "10"
	tower: "Forum"
	}
	{number: "1100"
	floor: "11"
	tower: "Forum"
	}
	{number: "1110"
	floor: "11"
	tower: "Forum"
	}
	{number: "1120"
	floor: "11"
	tower: "Forum"
	}
	{number: "1130"
	floor: "11"
	tower: "Forum"
	}
	{number: "1140"
	floor: "11"
	tower: "Forum"
	}
	{number: "1150"
	floor: "11"
	tower: "Forum"
	}
	])	
