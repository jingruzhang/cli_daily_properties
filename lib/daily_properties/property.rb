class DailyProperties::Property
    attr_accessor :address, :price, :sold_date, :url
    def self.all
        DailyProperties::Scraper.new
        property_1 = self.new
        property_1.address = "3904 N Seeley Ave, Chicago, IL"
        property_1.price = "$1.93M"
        property_1.sold_date = "sold 04/05/2017"
        property_1.url = "http://www.zillow.com/homedetails/3904-N-Seeley-Ave-Chicago-IL-60618/113958116_zpid/"
        
        property_2 = self.new
        property_2.address = "2631 W Belmont Ave UNIT 4, Chicago, IL"
        property_2.price = "$312,000"
        property_2.sold_date = "sold 04/04/2017"
        property_2.url = "http://www.zillow.com/homedetails/2631-W-Belmont-Ave-UNIT-4-Chicago-IL-60618/65549852_zpid/"
        
        [property_1, property_2]
    end
end
