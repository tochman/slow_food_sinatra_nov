class Dish
  include DataMapper::Resource
  property :id, Serial, key: true
  property :name, String
  property :price, String
end
