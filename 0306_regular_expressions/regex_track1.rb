#Matching {x} Repetitions

Regex_Pattern = '^[a-zA-Z|02468]{40}[013579|\s]{5}$'

print !!(gets =~ /#{Regex_Pattern}/)


#Matching {x, y} Repetitions

Regex_Pattern = '^\d{1,2}[a-zA-Z]{3,}\.{0,3}$'

print !!(gets =~ /#{Regex_Pattern}/)

#Matching Zero Or More Repetitions

Regex_Pattern = '^\d{2,}[a-z]*[A-Z]*$'

print !!(gets =~ /#{Regex_Pattern}/)

#Matching One Or More Repetitions

Regex_Pattern = '^\d+[A-Z]+[a-z]+$'

print !!(gets =~ /#{Regex_Pattern}/)


#Matching Ending Items
Regex_Pattern = '^[a-zA-Z]*s$'

print !!(gets =~ /#{Regex_Pattern}/)
