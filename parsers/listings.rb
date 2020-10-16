nokogiri = Nokogiri.HTML(content)
listings = nokogiri.css('ul.b-list__items_nofooter li.s-item')

listings.each do |listing|
    product = {}
    product['title'] = listing.at_css('h3.s-item__title')&.text
    product['price'] = listing.at_css('.s-item__price')&.text
    item_link = listing.at_css('a.s-item__link')
    product['url'] = item_link['href'] unless item_link.nil? 
    product['_collection'] = "listings"
    outputs << product
   pages << {
       uri: product['uri'],
       page_type: 'details',
       vars: {
           title: product['title'],
           price: product['price']
       }
   }
end