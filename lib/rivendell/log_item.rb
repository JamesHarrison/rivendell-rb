class Rivendell::LogItem
  include DataMapper::Resource
  property :ID,               Serial
  property :COUNT,            Integer,        :required => true
  property :TYPE,             Integer,        :default => 0, :required => true
  property :SOURCE,           Integer,        :required => true, :default => 0
  property :START_TIME,       Integer,        :default => 0
  property :GRACE_TIME,       Integer,        :required => true, :default => -1
  property :CART_NUMBER,      Integer,        :required => true, :default => 0
  property :TIME_TYPE,        Integer,        :required => true, :default => 0
  property :POST_POINT,       Enum['Y','N'],  :required => true, :default => 'N'
  property :TRANS_TYPE,       Integer,        :required => true, :default => 1
  property :START_POINT,      Integer,        :required => true, :default => -1
  property :END_POINT,        Integer,        :required => true, :default => -1
  property :FADEUP_POINT,     Integer,        :default => -1
  property :FADEUP_GAIN,      Integer,        :default => -3000
  property :FADEDOWN_POINT,   Integer,        :default => -1
  property :FADEDOWN_GAIN,    Integer,        :default => -3000
  property :SEGUE_START_POINT,Integer,        :required => true, :default => -1
  property :SEGUE_END_POINT,  Integer,        :required => true, :default => -1
  property :SEGUE_GAIN,       Integer,        :default => -3000
  property :DUCK_UP_GAIN,     Integer,        :default => 0
  property :DUCK_DOWN_GAIN,   Integer,        :default => 0
  property :COMMENT,          String,         :length => 255
  property :LABEL,            String,         :length => 64
  property :ORIGIN_USER,      String,         :length => 255, :default => 'admin'
  property :ORIGIN_DATETIME,  DateTime
  property :LINK_EVENT_NAME,  String,         :length => 64
  property :LINK_START_TIME,  Integer
  property :LINK_LENGTH,      Integer,        :default => 0
  property :LINK_START_SLOP,  Integer,        :default => 0
  property :LINK_END_SLOP,    Integer,        :default => 0
  property :LINK_ID,          Integer,        :default => -1
  property :LINK_EMBEDDED,    Enum['Y','N'],  :default => 'N'
  property :EXT_START_TIME,   Time
  property :EXT_LENGTH,       Integer
  property :EXT_CART_NAME,    String,         :length => 32
  property :EXT_DATA,         String,         :length => 32
  property :EXT_EVENT_ID,     String,         :length => 32
  property :EXT_ANNC_TYPE,    String,         :length => 8
  START_TIME_TYPE = {:imported => 0, :logged => 1, :predicted => 2, :actual => 3, :initial => 4}
  TIME_TYPE = {:relative => 0, :hard => 1}
  TRANS_TYPE = {:play => 0, :segue => 1, :stop => 2, :no_trans => 255}
  TRANS_EDGE = {:all_trans => 0, :leading_trans => 1, :trailing_trans => 2}
  SOURCE = {:manual => 0, :traffic => 1, :music => 2, :template => 3, :tracker => 4}
  STATUS = {:scheduled => 1, :playing => 2, :auditioning => 3, :finished => 4, :finishing => 5, :paused => 6}
  STATE = {:ok => 0, :no_cart => 1, :no_cut => 2}
  TYPE = {:cart => 0, :marker => 1, :macro => 2, :open_bracket => 3, :close_bracket => 4, :chain => 5, :track => 6, :music_link => 7, :traffic_link => 8, :unknown => 9}
  START_SOURCE = {:unknown => 0, :manual => 1, :play => 2, :segue => 3, :time => 4, :panel => 5, :macro => 6}
  PLAY_SOURCE = {:unknown => 0, :main_log => 1, :aux_log_1 => 2, :aux_log_2 => 3, :panel => 4}
  POINTER_SOURCE = {:cart => 0, :log => 1, :auto => 2}
end