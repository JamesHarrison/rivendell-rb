puts Rivendell::Cart.first.properties_to_serialize({}).map(&:name).join(",")
puts Rivendell::Cart.all.to_csv.gsub("\n\n","\n")