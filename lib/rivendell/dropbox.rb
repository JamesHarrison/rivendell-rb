class Rivendell::Dropbox
  include DataMapper::Resource
  storage_names[:default] = 'DROPBOXES'

  property :id, Serial, :key => true
  property :station_name, String, :length => 64, :required => true
  property :group_name, String, :length => 10, :required => true
  property :path, String, :length => 255, :required => true
  property :log_path, String, :length => 255

  property :normalization_level, Integer, :default => -1300
  property :autotrim_level, Integer, :default => -3000

  property :single_cart, Enum['N','Y'], :default => 'N'
  property :to_cart, Integer
  property :use_cartchunk_id, Enum['N','Y'], :default => 'N'
  property :title_from_cartchunk_id, Enum['N','Y'], :default => 'N'
  
  property :delete_cuts, Enum['N','Y'], :default => 'N'
  property :delete_source, Enum['N','Y'], :default => 'Y'

  property :metadata_pattern, String, :length => 64

  property :startdate_offset, Integer, :default => 0
  property :enddate_offset, Integer, :default => 0

  property :fix_broken_formats, Enum['N','Y'], :default => 'N'

  property :import_create_dates, Enum['N','Y'], :default => 'N'
  property :create_startdate_offset, Integer, :default => 0
  property :create_enddate_offset, Integer, :default => 0

  belongs_to :group, :child_key => [ :group_name ], :parent_key => [ :name ]

  belongs_to :cart, :child_key => [ :to_cart ], :parent_key => [ :number ]

end
