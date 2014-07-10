def tag(tag_name, attr = nil)
  #TODO:  Build HTML tags around  content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]

  if attr == nil
    full_html = "<#{tag_name}>#{yield}</#{tag_name}>"
  else
    full_html = "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
  end

  full_html

end

def timer_for
  #TODO:  Return time taken to execute the given block
  start_time = time.now
  yield
  end_time = time.now - start_time
end

def transform(element)
  #TODO:  Simply execute the given block on element
  yield(element)
end



html = tag("h1") { "HELLO" }

puts html

html = tag("h1") do
  tag("a", ["href", "http://lewagon.org"]) { "le wagon" }
end



puts html

