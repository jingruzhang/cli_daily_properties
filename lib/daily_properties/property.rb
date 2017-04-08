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

    def self.property
        @@all 
    end

end
