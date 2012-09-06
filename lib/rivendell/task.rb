class Rivendell::Task
  include DataMapper::Resource
  storage_names[:default] = 'RECORDINGS'

  property :id, Serial, :key => true
  property :is_active, Enum['N','Y'],  :default => 'Y'
  property :station_name, String, :length => 64, :required => true
  property :type, Integer, :default => 0, :required => true
  property :description, String, :length => 64

  property :channel, Integer, :default => 0
  property :cut_name, String, :length => 12

  property :start_type, Integer, :default => 0
  property :start_time, String # FIXME
  property :start_length, Integer, :default => 0
  property :start_matrix, Integer, :default => -1
  property :start_line, Integer, :default => -1
  property :start_offset, Integer, :default => 0
  property :start_gpi, Integer, :default => -1

  property :end_type, Integer, :default => 0
  property :end_time, String # FIXME
  property :end_length, Integer, :default => 0
  property :end_matrix, Integer, :default => -1
  property :end_line, Integer, :default => -1
  property :end_gpi, Integer, :default => -1

  property :startdate_offset, Integer, :default => 0
  property :enddate_offset, Integer, :default => 0
  property :eventdate_offset, Integer, :default => 0

  property :length, Integer

  property :mon, Enum['N','Y'],  :default => 'N'
  property :tue, Enum['N','Y'],  :default => 'N'
  property :wed, Enum['N','Y'],  :default => 'N'
  property :thu, Enum['N','Y'],  :default => 'N'
  property :fri, Enum['N','Y'],  :default => 'N'
  property :sat, Enum['N','Y'],  :default => 'N'
  property :sun, Enum['N','Y'],  :default => 'N'

  property :allow_mult_recs, Enum['N','Y'], :default => 'N'
  property :max_gpi_rec_length, Integer, :default => 3600000
  property :trim_threshold, Integer
  property :normalize_level, Integer, :default => -1300
  
  property :format, Integer, :default => 0
  property :channels, Integer, :default => 2
  property :samprate, Integer, :default => 44100
  property :bitrate, Integer, :default => 0
  property :quality, Integer, :default => 0

  property :macro_cart, Integer, :default => -1
  property :switch_input, Integer, :default => -1
  property :switch_output, Integer, :default => -1

  property :exit_code, Integer, :default => 0
  property :exit_text, Text

  property :one_shot, Enum['N','Y'], :default => 'N'

  property :url, String, :length => 255
  property :url_username, String, :length => 64
  property :url_password, String, :length => 64

  property :enable_metadata, Enum['N','Y'], :default => 'N'

  property :feed_id, Integer, :default => -1

end
