states = { "NY" => "New York", "NJ" => "New Jersey",
"ME" => "Maine" }

string = "Eastern states include NY, NJ, and ME."
if string.gsub!(/\b([A-Z]{2})\b/) { states[$1] }
puts "Substitution occurred"
else
puts "String unchanged"
end

