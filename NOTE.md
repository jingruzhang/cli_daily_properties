Imagine the interface
Start with project structure
Start with the entry point
Discover objects
Program

bundle gem daily_properties

command line interface for new properties sold in the neighborhood (& later maybe new houses listed in the neighborhood, too) zillow

with users typing in zip code, it shows a list of properties recently sold within the zipcode (a list of 20)

(Build from where the user is going to interact with the program!)
CLI interface: 
User type in: daily_properties
60618
A list of 26 properties
3904 N Seeley Ave, Chicago, IL, $1.93M, sold 04/05/2017, 6 bds, 6 ba
2631 W Belmont Ave UNIT 4, Chicago, IL, $312,000, sold 04/04/2017, 2bds, 2ba
…
Which one would you like to learn more about? (1-26)
Goodbye!

Step zero: basic interface and fake data
Step one: scrape zillow with a static zipcode--60618

What is a property?
A property has an address
A property has a price
A property has a sold date
A property has a URL

