# CLI Controller

class DailyProperties::CLI
    def call
        puts "Welcome to Daily Properties! Here's a list of the 20 properties most recently sold within the zipcode area 60618."
        list_properties
        menu
    end

    def list_properties
        @properties = DailyProperties::Property.all
        @properties.each.with_index(1) do |property, i|
            puts "#{i}. #{property.address}, #{property.sold_date} at #{property.price}"
        end

    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the property that you'd like to know more about, or enter list to see the list, or enter exit:"
            input = gets.strip.downcase
            if input.to_i > 0 && input.to_i < 21
                the_property = @properties[input.to_i - 1]
                puts "#{the_property.address}, #{the_property.sold_date} at #{the_property.price}"
            elsif input == "list"
                list_properties
            elsif input == "exit"
                goodbye
            else
                puts "Not sure what you just enter. Type list or exit. "
            end
        end
    end

    def goodbye
        puts "Thanks for trying me out. See you soon."
    end

end
