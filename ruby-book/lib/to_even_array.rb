def to_even_array numbers
  arr = numbers
  arr.delete_if { |number| number.odd? }
end
