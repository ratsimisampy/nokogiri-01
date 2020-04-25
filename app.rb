require 'nokogiri'
require 'open-uri'
require 'restclient'

begin
#Opening a page with Nokogiri and open-uri
page = Nokogiri::HTML(RestClient.get("https://coinmarketcap.com/all/views/all/")) 
#autres var
i = 0  
result = Hash.new
page.xpath('(//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]/div | //td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]/a)').each do |node|
  
    puts node.text
end

rescue => err

    puts "en erreur !"
    puts err

end