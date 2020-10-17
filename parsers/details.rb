nokogiri = Nokogiri.HTML(content)
seller = nokogiri.at_css('.si-inner .mbg-nw')&.text
feedback = nokogiri.at_css('.si-inner #si-fb')&.text

outputs << {
    _collection: 'products',
    title: page['vars']['title'],
    price: page['vars']['price'],
    seller: seller,
    feedback: feedback
}