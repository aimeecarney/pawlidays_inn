How to build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. Force that to build the CLI interface
5. Stub out the interface
6. Start making things real
7. Discover objects
8. Program

A command line interface for dog friendly hotels and vacation rentals. Starting with hotels.com and Airbnb.

User types pawlidays_inn

The user is then prompted to enter a zip code

Show a listing of hotels/rentals.

What is a listing?
Listing has a name
Listing has a price per night
Listing has a Address
Listing as a URL

BRING FIDO URL (w/ variables) https://www.bringfido.com/lodging/search/?location=#{city}%2C+#{state}%2C+US&arrival=#{checkin}&departure=#{checkout}&rooms=1&adults=2&dogs=1&type=&rating_low=0&price=0%2C500

AIR BNB URL (w/ variables) https://www.airbnb.com/s/#{city}-#{state}/homes?adults=2&allow_override%5B%5D=&amenity=pet-friendly&checkin=#{checkin}&checkout=#{checkout}&gclid=CjwKEAjw9MrIBRCr2LPek5-h8U0SJAD3jfhtl9hkPiVSqmTAhWk03OtJQFsQedru2tQUUNu2WgYTgBoCqBzw_wcB&guests=2&hosting_amenities%5B%5D=12&in_vr=1&room_types%5B%5D=Entire%20home%2Fapt&s_tag=pkYHg0Tf
