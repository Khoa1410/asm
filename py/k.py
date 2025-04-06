while True :
	while True :
		seed = int(input("nhap seed game ban muon choi"))
		if seed > 0 :
			break
		else :
			print("nhap lai seed")
	print("tro choi bat dau")

	while True :
		sa = 1664542
		sb = 1014423544
		sc = 2**32

		seed = (sa * seed + sb) % sc

		mi = 1
		ma = 3

		seed = (seed % (ma - mi + 1))

		while True :
			if seed == 0 :
				seed = (seed * sb + sa) % (ma - mi + 1)
			else :
				break

		if seed == 1 :
			c = "keo"
		if seed == 2 :
			c = "dam"
		if seed == 3 :
			c = "la"

		while True :
			p = input("nhap 'keo', 'dam' hoac 'la' : ")
			if p == "keo" or p == "dam" or p == "la" :
				print("nguoi choi chon : " + p)
				print("may tinh chon : " + c)

			if p == "dam" :
				if c == "dam" :
					print("Draw")
				if c == "keo" :
					print("Win")
				if c == "la" :
					print("Lose")
				print("ban co muon choi lai hay khong, nhap 'co' de choi lai va nhap 'khong' de ngung choi")
				break
			if p == "keo" :
				if c == "dam" :
					print("Lose")
				if c == "keo" :
					print("Draw")
				if c == "la" :
					print("Win")
				print("ban co muon choi lai hay khong, nhap 'co' de choi lai va nhap 'khong' de ngung choi")
				break
			if p == "la" :
				if c == "dam" :
					print("Win")
				if c == "keo" :
					print("Lose")
				if c == "la" :
					print("Draw")
				print("ban co muon choi lai hay khong, nhap 'co' de choi lai va nhap 'khong' de ngung choi")
				break

			else :
				print("nhap lai")
		while True :
			r = input("nhap cau tra loi : ")

			if r == "khong" :
				break
			if r == "co" :
				print("tro choi se bat dau lai")
				break
			else :
				print("nhap lai")

		if r == "khong" :
			break
		if r == "co" :
			print("ban co muon nhap seed moi hay de truong trinh tu randam, nhap 'co' de nhap lai seed va nhap 'khong' de truong trinh tu ramdom")
			while True :
				g = input("nhap cau tra loi : ")

				if g == "khong" :
					break
				if g == "co" :
					break
				else :
					print("nhap lai")
			if g == "co" :
				break
			if r == "khong" :
				break
		if g == "co" :
			break
		if r == "khong" :
			break
	if r == "khong" :
		break


