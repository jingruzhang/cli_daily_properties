class DailyProperties::Property
    attr_accessor :address, :price, :sold_date, :url
    @@all = []

    def initialize(address = nil, price = nil, sold_date = nil, url = nil)
        @address = address 
        @price = price
        @sold_date = sold_date
        @url = url
        @@all << self unless @@all.detect{|p| p.address == address}
    end

    def self.new_from_page(property)
        self.new(
            property.css(".zsg-photo-card-address").text,
            property.css("span.zsg-photo-card-status").text,
            property.css(".zsg-photo-card-notification").text,
            'http://www.zillow.com' + property.css("a").attr("href")
            )
    end

    def self.properties
        @@all 
    end

    def self.clear_all
        @@all.clear
    end

    def self.find(index)
        index < 0 ? nil : @@all[index]
    end

    def convert_price_to_int
        if price.include?("M")
            (price.split("$")[1].gsub("M", "").to_f*1000000).to_i
        else
            price.split("$")[1].gsub(",", "").to_i 
        end
    end

    def self.sort_by_price
        @@all.sort! {|a, b| b.convert_price_to_int <=> a.convert_price_to_int}
    end

end

