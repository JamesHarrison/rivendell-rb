class Rivendell::LogItem
  include DataMapper::Resource
  property :id,               Serial
  property :count,            Integer,        :required => true
  property :type,             Integer,        :default => 0, :required => true
  property :source,           Integer,        :required => true, :default => 0
  property :start_time,       Integer,        :default => 0
  property :grace_time,       Integer,        :required => true, :default => -1
  property :cart_number,      Integer,        :required => true, :default => 0
  property :time_type,        Integer,        :required => true, :default => 0
  property :post_point,       Enum['Y','N'],  :required => true, :default => 'N'
  property :trans_type,       Integer,        :required => true, :default => 1
  property :start_point,      Integer,        :required => true, :default => -1
  property :end_point,        Integer,        :required => true, :default => -1
  property :fadeup_point,     Integer,        :default => -1
  property :fadeup_gain,      Integer,        :default => -3000
  property :fadedown_point,   Integer,        :default => -1
  property :fadedown_gain,    Integer,        :default => -3000
  property :segue_start_point,Integer,        :required => true, :default => -1
  property :segue_end_point,  Integer,        :required => true, :default => -1
  property :segue_gain,       Integer,        :default => -3000
  property :duck_up_gain,     Integer,        :default => 0
  property :duck_down_gain,   Integer,        :default => 0
  property :comment,          String,         :length => 255
  property :label,            String,         :length => 64
  property :origin_user,      String,         :length => 255, :default => 'admin'
  property :origin_datetime,  DateTime
  property :link_event_name,  String,         :length => 64
  property :link_start_time,  Integer
  property :link_length,      Integer,        :default => 0
  property :link_start_slop,  Integer,        :default => 0
  property :link_end_slop,    Integer,        :default => 0
  property :link_id,          Integer,        :default => -1
  property :link_embedded,    Enum['Y','N'],  :default => 'N'
  property :ext_start_time,   Time
  property :ext_length,       Integer
  property :ext_cart_name,    String,         :length => 32
  property :ext_data,         String,         :length => 32
  property :ext_event_id,     String,         :length => 32
  property :ext_annc_type,    String,         :length => 8
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
