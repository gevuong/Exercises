def ftoc(temp_f)
  (temp_f - 32) * 5 / 9.to_f
end

def ctof(temp_c)
  temp_c * 9 / 5.to_f + 32
end
