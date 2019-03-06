# "Matching Specific Characters"
Regex_Pattern = '^[123][120][xs0][30Aa][xsu][\.\,]$'
print !!(gets =~ /#{Regex_Pattern}/)

# "Excluding Specific Characters"
Regex_Pattern = '^[^1234567890][^aeiou][^bcDF][\S][^AEIOU][^\.\,]$'
print !!(gets =~ /#{Regex_Pattern}/)

# "Excluding Specific Characters"
Regex_Pattern = '^[a-z][1-9][^a-z][^A-Z][A-Z]'
print !!(gets =~ /#{Regex_Pattern}/)