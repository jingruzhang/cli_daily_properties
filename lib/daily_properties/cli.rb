# CLI Controller

class DailyProperties::CLI

    def welcome
        print "Welcome! "
        call
    end

    def call
        puts "Please enter the zipcode, and I will list the most recently sold properties in that area for you: "
        zipcode = gets.strip.to_i
        list_properties(zipcode)
        menu
    end

    def list_properties(zipcode)
        DailyProperties::Scraper.make_properties(zipcode)
        @properties = DailyProperties::Property.properties
        @properties.each.with_index(1) do |property, i|
            puts "#{i}. #{property.address}, #{property.sold_date}, #{property.price}"
        end
        puts "--------------------------------------------------"
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the property that you'd like to know more about, or enter 'price' to view the list sorted by sold price (high-->low), or enter 'another' to look up another zipcode, or enter 'exit': "
            input = gets.strip.downcase
            if input == "another"
                DailyProperties::Property.clear_all
                puts "--------------------------------------------------"
                call
            elsif input == "price"
                DailyProperties::Property.sort_by_price
                @properties = DailyProperties::Property.properties
                @properties.each.with_index(1) do |property, i|
                    puts "#{i}. #{property.address}, #{property.sold_date}, #{property.price}"
                end
                puts "--------------------------------------------------"
            elsif input == "exit"
                goodbye
                exit
            elsif the_property = DailyProperties::Property.find(input.to_i - 1) 
                puts "#{the_property.address}, #{the_property.sold_date}, #{the_property.price}"
                puts "See more at #{the_property.url}"
            else
                puts "Not sure what you just enter."
                puts "--------------------------------------------------"
            end
        end
    end

    def goodbye
        puts "Thanks for trying me out. See you soon!"
        puts "--------------------------------------------------"
    end

end
