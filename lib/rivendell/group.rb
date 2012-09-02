class Rivendell::Group
  include DataMapper::Resource
  storage_names[:default] = 'GROUPS'

  property :name, String, :key => true
  property :description, String, :length => 255
  property :default_cart_type, Integer, :default => 1, :required => true
  property :default_title, String, :default => "Imported from %f.%e"
  
  property :default_low_cart, Integer, :default => 0
  property :default_high_cart, Integer, :default => 0
  property :enforce_cart_range, Enum['N','Y'],  :default => 'N'

  property :cut_shelflife, Integer, :default => -1
  
  property :report_tfc, Enum['N','Y'],  :default => 'Y'
  property :report_mus, Enum['N','Y'],  :default => 'Y'

  property :enable_now_next, Enum['N','Y'],  :default => 'N'

  property :color, String, :length => 7

  has n, :carts, :child_key => [ :group_name ], :parent_key => [ :name ]

  def default_cart_range
    default_low_cart..default_high_cart
  end

  def default_cart_range=(range)
    self.default_low_cart = range.begin
    self.default_high_cart = range.end
  end

  def cart_numbers
    carts.all(:fields => [:number], :order => [ :number ]).map(&:number)
  end

  def free_cart_number
    # FIXME
    ((default_cart_range).to_a - cart_numbers).first
  end

  has n, :dropboxes, :child_key => [ :group_name ], :parent_key => [ :name ]

end
