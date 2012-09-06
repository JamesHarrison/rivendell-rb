Rivendell::Cart.duplicated(*arguments).each do |duplicated_group|
  puts "# #{duplicated_group[:numbers].size} Carts with #{duplicated_group[:fields].inspect}"
  puts duplicated_group[:numbers]
end
