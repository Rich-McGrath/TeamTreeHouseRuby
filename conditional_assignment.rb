#name = "Rich"

#if defined?(name)
#  name
#else
#  name = "Richard"
#end

# The above code and be replace by the following:
new_name ||= "Rich"
puts new_name


puts name
