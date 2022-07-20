{
# Код возврата HTML в позиции 9 в строке лога
#code = $9
# Remote ip address
code = substr($27,2)
l = length(code)
code = substr(code,1,l-1)
if (code in table)
{
    table[code] += 1
}
else
{
    table[code] = 1
}
}
END {
for (code in table)
{
  print "Запросов с ip " code " встречается " table[code] " раз."
}
}