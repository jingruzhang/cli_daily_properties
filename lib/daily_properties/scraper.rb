class DailyProperties::Scraper

    def self.get_page
        index_url = "https://www.zillow.com/homes/recently_sold/Chicago-IL-60618/"
        doc = Nokogiri::HTML(open(index_url))
    end
    
    def self.scrape_recently_sold
        self.get_page.css(".zsg-photo-card-content")
    end

    def self.make_properties
        self.scrape_recently_sold.each do |property|
            DailyProperties::Property.new_from_page(property)
        end
    end


end
