print("day la chuong trinh tinh cos cua goc giua vector v(a1,b1) va vector n(a2,b2)")
a1 = float(input("nhap a1 : "))
b1 = float(input("nhap b1 : "))
a2 = float(input("nhap a2 : "))
b2 = float(input("nhap b2 : "))

c = ((a1**2 + b1**2)*0.5)*((a2**2 +b2**2)**0.5)
d = a1*a2 + b1*b2
e = d/c

print("cos cua goc cua vector v va vector n la : " + str(e))