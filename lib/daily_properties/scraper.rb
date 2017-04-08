class DailyProperties::Scraper

    def self.get_page(zipcode)
        index_url = "https://www.zillow.com/homes/recently_sold/#{zipcode}/"
        doc = Nokogiri::HTML(open(index_url))
        doc.css(".zsg-photo-card-content")
    end

    def self.make_properties(zipcode)
        self.get_page(zipcode).each do |property|
            DailyProperties::Property.new_from_page(property)
        end
    end


end
