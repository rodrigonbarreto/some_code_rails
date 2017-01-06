module ApplicationHelper
  City = [
    ["Amsterdam", "Amsterdam"],
    ["The Hague", "the_hague"],
    ["Lisse", "lisse"],
    ["Haarlem", "haarlem"],
    ["Rotterdam", "rotterdam"],
  ]
  
  def options_for_states(selected)
    options_for_select(City, selected)
  end
end
