//1
var myFriends : [String] = []

//2
print("第二題")
myFriends += ["Ian","Bomi","Kevin"]
print(myFriends)

//3
print("第三題")
myFriends.append("Michael")
print(myFriends)

//4
print("第四題")
myFriends.swapAt(0,2)
print(myFriends)

//5
print("第五題")
for i in myFriends {
    print(i)
}

//6
print(myFriends.count)
//使用.count可以看到陣列長度只有四，明顯index 5已經超出範圍，所以沒有這個數值

//7
print("第七題")
print(myFriends.first!)

//8
print("第八題")
print(myFriends.last!)

//9
var myCountryNumber : [String : Int] = [:]

//10
print("第十題")
myCountryNumber = ["US" : 1 , "GB" : 44 , "JP" : 81]
print(myCountryNumber)

//11
print("第十一題")
myCountryNumber["GB"] = 0
print(myCountryNumber)

//12 (不確定這題是不是這個意思)
print("第十二題")
var empty = [String : Int]()
print(empty)

//13
//使用.removeValue
print("第十三題")
myCountryNumber.removeValue(forKey: "US")
print(myCountryNumber)

