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
  filename = title.downcase.gsub(" ","-").gsub("é","e")

  dropbox_path = "/nfs/dropboxes/emissions/#{filename}*"
  dropbox_log = "/nfs/dropboxes/log/#{filename}.log"
  
  logger.info "Create Cart #{title}"
  cart = group.carts.create :title => title
  logger.info "Created Cart #{title} with number #{cart.number}"

  logger.info "Create DropBox #{dropbox_path} with #{dropbox_log}"
  dropbox = group.dropboxes.create :to_cart => cart.number, :path => dropbox_path, :log_path => dropbox_log, :delete_cuts => 'Y', :station_name => station
  unless dropbox.valid?
    puts dropbox.errors.inspect
    raise "#fail"
  end
end

