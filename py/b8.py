a = float(input())
b = float(input())
c = float(input())

d = b**2 - 4*a*c

if d < 0 :
    print("phuong trinh vo nghiem")
else :
    x1 = (-b + d**0.5)/(2*a)
    x2 = (-b - d**0.5)/(2*a)
    print("nghiem cua phuong trinh la :", x1 ,",", x2)
