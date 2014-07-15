def french_phone_number?(phone_number)
  # TODO: true or false?
  if phone_number =~ /^(0|\+33|0033)\D?[1-9](\D?\d\d){4}$/
    return true

  else
    return false
  end
end

end


