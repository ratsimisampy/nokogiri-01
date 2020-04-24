require 'nokogiri'
require 'open-uri'
require 'restclient'

begin
#Opening a page with Nokogiri and open-uri
page = Nokogiri::HTML(RestClient.get("https://www.paris.fr/services"))   
page.xpath('//div[@class="paris-theme-card"]//a').each do |node|
    puts node['href']
end

rescue => each

    puts "en erreur !"

end