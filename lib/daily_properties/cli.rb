# CLI Controller

class DailyProperties::CLI
    def call
        puts "Welcome! Please enter the zipcode, and I will list the 26 most recently sold properties in that area:"
        zipcode = gets.strip.to_i
        #puts "Welcome to Daily Properties! Here's a list of the 20 properties most recently sold within the zipcode area 60618."
        list_properties(zipcode)
        menu
    end

    def list_properties(zipcode)
        DailyProperties::Scraper.make_properties(zipcode)
        @properties = DailyProperties::Property.property
        @properties.each.with_index(1) do |property, i|
            puts "#{i}. #{property.address}, #{property.sold_date} at #{property.price}"
        end
        puts "--------------------------------------------------"
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the property that you'd like to know more about, or enter another to look up another zipcode, or enter list to see the list, or enter exit: "
            input = gets.strip.downcase
            if input.to_i > 0 && input.to_i < 27
                the_property = @properties[input.to_i - 1]
                puts "#{the_property.address}, #{the_property.sold_date} at #{the_property.price}"
                puts "See more at #{the_property.url}"
            elsif input == "another"
                DailyProperties::Property.clear_all
                puts "--------------------------------------------------"
                call
            elsif input == "list"
                list_properties
            elsif input == "exit"
                goodbye
                exit
            else
                puts "Not sure what you just enter. Type list or exit. "
                puts "--------------------------------------------------"
            end
        end
    end

    def goodbye
        puts "Thanks for trying me out. See you soon!"
        puts "--------------------------------------------------"
    end

end
