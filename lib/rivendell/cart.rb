class Rivendell::Cart
  include DataMapper::Resource
  storage_names[:default] = 'CART'
  property :number, Integer, :key => true
  property :type, Integer
  property :group_name, String, :length => 10
  property :title, String
  property :artist, String
  property :album, String
  property :year, Date
end
