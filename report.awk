{
# Код возврата HTML в позиции 9 в строке лога
code = $9

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
  print "Код " code " встречается " table[code] " раз."
}
}