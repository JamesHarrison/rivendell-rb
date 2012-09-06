# -*- coding: utf-8 -*-

#
# Create Carts and their associated DropBox
#

group = Rivendell::Group.get("PAD")
station = "auto"

# Stop on error
DataMapper::Model.raise_on_save_failure = true

logger.info "Read carts-title.txt"

File.readlines(File.expand_path("../carts-title.txt", __FILE__)).map(&:strip).each do |title|
  cart = group.carts.create :title => title
  logger.info "Created Cart #{title} with number #{cart.number}"

  logger.info "Create DropBox #{dropbox_path} with #{dropbox_log}"

  filename = title.downcase.gsub(" ","-").gsub("é","e")
  group.dropboxes.create :to_cart => cart.number, :path => "#{dropbox_dir}/emissions/#{filename}*", :log_path => "#{dropbox_dir}/log/#{filename}.log", :delete_cuts => 'Y', :station_name => station
end

