class Rivendell::Log
  include DataMapper::Resource
  storage_names[:default] = 'LOGS'
  property :NAME, String, :key => true
  property :LOG_EXISTS, Enum['Y', 'N'], :default => 'Y'
  property :TYPE, Integer, :default => 0, :required => true
  property :SERVICE, String, :length => 10, :required => true
  property :DESCRIPTION, String, :length => 64
  property :ORIGIN_USER, String, :required => true
  property :ORIGIN_DATETIME, DateTime, :required => true
  property :LINK_DATETIME, DateTime, :required => true
  property :MODIFIED_DATETIME, DateTime, :required => true
  property :AUTO_REFRESH, Enum['Y', 'N'], :default => 'N'
  property :START_DATE, String, :required => true, :default => '0000-00-00'
  property :END_DATE, String, :required => true, :default => '0000-00-00'
  property :PURGE_DATE, String, :default => '0000-00-00'
  property :IMPORT_DATE, Date
  property :SCHEDULED_TRACKS, Integer, :default => 0
  property :COMPLETED_TRACKS, Integer, :default => 0
  property :MUSIC_LINKS, Integer, :default => 0
  property :MUSIC_LINKED, Enum['Y', 'N'], :default => 'N'
  property :TRAFFIC_LINKS, Integer, :default => 0
  property :TRAFFIC_LINKED, Enum['Y', 'N'], :default => 'N'
  property :NEXT_ID, Integer, :default => 0
  def items
    return @items if @items
    classname = "LogItem"+self.NAME.strip
    Object.const_set(classname, Class.new(Rivendell::LogItem))
    Object.const_get(classname).class_exec(self.NAME) do |name|
      storage_names[:default] = name+"_LOG"
    end
    @items = Object.const_get(classname)
    return @items
  end
  
  before :save, :ensure_name_valid
  # Scrubs out invalid stuff.
  def ensure_name_valid
    self.NAME = self.NAME.gsub(" ", "_").gsub(/[^A-Za-z0-9_]/,'')
    return true
  end
  
  before :save, :set_sql_session
  def set_sql_session
    repository.adapter.execute("SET SESSION sql_mode=ALLOW_INVALID_DATES;")
  end
  
  after :destroy, :delete_log_table
  def delete_log_table
    sql = "DROP TABLE #{self.NAME+"_LOG"};"
    repository.adapter.execute(sql)
  end
  
  before :create, :make_log_table
  # Makes the table for a given log if it doesn't exist already.
  def make_log_table
    ensure_name_valid
    sql = "CREATE TABLE IF NOT EXISTS #{self.NAME+"_LOG"} (ID INT NOT NULL PRIMARY KEY,COUNT INT NOT NULL,TYPE INT DEFAULT 0,SOURCE INT NOT NULL,START_TIME int,GRACE_TIME int default 0,CART_NUMBER INT UNSIGNED NOT NULL,TIME_TYPE INT NOT NULL,POST_POINT enum('N','Y') default 'N',TRANS_TYPE INT NOT NULL,START_POINT INT NOT NULL DEFAULT -1,END_POINT INT NOT NULL DEFAULT -1,FADEUP_POINT int default -1,FADEUP_GAIN int default -3000,FADEDOWN_POINT int default -1,FADEDOWN_GAIN int default -3000,SEGUE_START_POINT INT NOT NULL DEFAULT -1,SEGUE_END_POINT INT NOT NULL DEFAULT -1,SEGUE_GAIN int default -3000,DUCK_UP_GAIN int default 0,DUCK_DOWN_GAIN int default 0,COMMENT CHAR(255),LABEL CHAR(64),ORIGIN_USER char(255),ORIGIN_DATETIME datetime,LINK_EVENT_NAME char(64),LINK_START_TIME int,LINK_LENGTH int default 0,LINK_START_SLOP int default 0,LINK_END_SLOP int default 0,LINK_ID int default -1,LINK_EMBEDDED enum('N','Y') default 'N',EXT_START_TIME time,EXT_LENGTH int,EXT_CART_NAME char(32),EXT_DATA char(32),EXT_EVENT_ID char(32),EXT_ANNC_TYPE char(8),INDEX COUNT_IDX (COUNT),INDEX CART_NUMBER_IDX (CART_NUMBER),INDEX LABEL_IDX (LABEL));"
    repository.adapter.execute(sql)
    return true
  end
end




