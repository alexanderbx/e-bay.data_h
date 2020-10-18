collections = Datahen::Client::SraperJobOutPut::.new.collections("ebay")
collection = colections.find(|collection| colection['collection'] == "listings")
if collection 
    total = collection["outputs"]
    outputs << {
        "_collection" => "summary",
        "total_listings" => total
    }
else
    puts "no listings collection found"
end