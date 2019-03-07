def validate_usr(username)
 
    !!(username.to_s =~ /^[a-z0-9_]{4,16}$/)
   
end
