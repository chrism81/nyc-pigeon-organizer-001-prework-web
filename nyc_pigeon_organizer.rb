def nyc_pigeon_organizer(data)
  # write your code here!
  names=[]
  pigeons={}
  data[:lives].each do |place, name|
  name.each { |e|  names<<e}
  end

names.each { |e|  pigeons[e]={:color=>[], :gender=>[], :lives=>[]}}

data[:color].each do |key, value|
value.each do |name|
  pigeons[name][:color]<<key.to_s
end
end

data[:gender].each do |key, value|
value.each do |name|
  pigeons[name][:gender]<<key.to_s
end
end

data[:lives].each do |key, value|
  value.each do |name|  
    pigeons[name][:lives]<<key
  end
end

pigeons
end

data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }