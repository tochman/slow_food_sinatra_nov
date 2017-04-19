Given(/^the following dishes exist$/) do |table|
  table.hashes.each do | dish |
    #binding.pry
    Dish.create(dish)
  end
  # table is a Cucumber::Core::Ast::DataTable
end
