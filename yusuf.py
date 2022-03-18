# num = int(input("..."))
num = 20
x = 0
for i in range(1,num +1) :
  
  if i < round(num//2) :
    print((i*" * ").center(int(num/2)*3,"-"))
  elif i == num/2:
    print(("Hello World !").center(int(num/2)*3))
  elif (i-x) <= 0 :
    pass
  else :
    x += 2
    if i != x :
      print((" * "*(i-x)).center(int(num/2)*3,"-"))
      
