BEGIN {
  print "Дата Код URL"
}
{
# Код возврата HTML в позиции 9 в строке лога
code = $9

if (code >= "500")
{
   print $4 " " $9 " " $7
}

}