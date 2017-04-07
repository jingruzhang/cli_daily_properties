# CLI Controller

class DailyProperties::CLI
    def call
        puts "Welcome to Daily Properties! Here's a list of the 20 properties most recently sold within the zipcode area 60618."
        list_properties
        menu
    end

    def list_properties
        puts "1. 3904 N Seeley Ave, Chicago, IL, $1.93M, sold 04/05/2017, 6 bds, 6 ba"
        puts "2. 2631 W Belmont Ave UNIT 4, Chicago, IL, $312,000, sold 04/04/2017, 2bds, 2ba"
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the property that you'd like to know more about, or enter list to see the list, or enter exit:"
            input = gets.strip.downcase
            case input
            when "1"
                puts "More info on property 1..."
            when "2"
                puts "More info on property 2..."
            when "list"
                list_properties
            when "exit"
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
