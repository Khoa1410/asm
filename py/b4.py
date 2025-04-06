print("day la chuong trinh tim toa do cuc tri cua ham so ax^2 + bx + c = 0")
a = float(input("nhap a : "))
b = float(input("nhap b : "))
c = float(input("nhap c : "))

x = -(b/(2*a))
y = a*(x**2) + b*x + c

print("day la toa do cuc tri ham so : (" + str(x) + "," + str(y) + ")")