class Rivendell::Cart
  include DataMapper::Resource
  storage_names[:default] = 'CART'

  property :number, Integer, :key => true
  property :type, Integer, :default => 1, :required => true
  property :group_name, String, :length => 10, :required => true
  property :title, String, :required => true
  property :artist, String
  property :album, String
  property :year, Date

  belongs_to :group, :child_key => [ :group_name ], :parent_key => [ :name ]

  before :valid?, :use_free_number

  def use_free_number(context = :default)
    self.number = group.free_cart_number if group
  end

  def self.duplicated(*fields)
    sql_fields = fields.join(", ")
    query = "select GROUP_CONCAT(NUMBER) as numbers, #{sql_fields} from CART group by #{sql_fields} having count(NUMBER) > 1;"

    repository(:default).adapter.select(query).map do |duplicated_group|
      field_values = fields.inject({}) { |map, field| map[field] = duplicated_group.send(field); map }
      { :numbers => duplicated_group.numbers.split(","), :fields => field_values }
    end
  end
end
