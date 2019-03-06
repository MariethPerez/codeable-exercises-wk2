def validate_code(code)
  #your code here
  !!(code.to_s =~ /^[123]/)
end