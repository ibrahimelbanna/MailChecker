HighRatingFacotr = 1.1
LowRatingFacotr = 0.9
MedRatingFacotr = 1 

if brand.rating = high  
  price_reference_handler(HighRatingFacotr)
elsif brand.rating = low
  price_reference_handler(LowRatingFacotr)
else
  price_reference_handler(LowRatingFacotr)
end

def price_reference_handler(factor)
  if price_reference < 15
    price_suggestion(0.75,factor)
  elsif price_reference < 25
    price_suggestion(0.775,factor)
  elsif price_reference < 50
    price_suggestion(0.8,factor)
  elsif price_reference < 75
    price_suggestion(0.825,factor)
  elsif price_reference < 100
    price_suggestion(0.85,factor)
  elsif price_reference < 200
    price_suggestion(0.875,factor)
  elsif price_reference < 400
    price_suggestion(0.9,factor)
  elsif price_reference < 600
    price_suggestion(0.925,factor)
  else
    price_suggestion(0.95,factor)
  end
end

def price_suggestion(price_reference_factor,factor)
  price_suggestion = (price_reference - product_database.shipping_cost * price_reference_factor) * factor
  price_original = price_suggestion
end
