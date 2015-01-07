class String
  define_method(:find_and_replace) do | find, replace |
    if self.include?(find)
      input_array = self.split(find)
      if input_array.length == 0
        input_array = ["",""]
      elsif input_array.length == 1
        input_array.push("")
      end
      input_array.join(replace)

    else
      self
    end
  end
end


# non working code, initial code that's been bypassed and superseded

# input_array = self.split(" ")
#   if input_array.include?(find)
#     place = input_array.index(find)
#     input_array[place] = replace
#     output = input_array.join(" ")
#     output

# find_array = find.split(" ")
# place = input_array.index(find)
# input_array[place] = re
# # find_array = find.split(" ")
# #
# # if input_array.include?(find_array[0])
