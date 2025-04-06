a = float(input())
b = float(input())
if a == 0 and b != 0:
	print("phuong trinh vo nghiem")
elif a == 0 and b == 0:
	print("phuong trinh co vo so nghiem")
else:
	c = -b/a
	print("nghiem cua pt la ",c)

