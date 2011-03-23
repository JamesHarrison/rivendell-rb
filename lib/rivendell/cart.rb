class Rivendell::Cart
  include DataMapper::Resource
  storage_names[:default] = 'CART'
  property :NUMBER, Integer, :key=>true
  property :TYPE,   Integer
  property :GROUP_NAME, String, :length=>10
  property :TITLE, String
  property :ARTIST, String
  property :ALBUM, String
  property :YEAR, Date
end