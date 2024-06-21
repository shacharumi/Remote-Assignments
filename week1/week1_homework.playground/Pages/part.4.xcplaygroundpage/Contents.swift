//1
print("第一題")
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for i in (lottoNumbers.count - 3)..<lottoNumbers.count{
    print(lottoNumbers[i])
}

//2
print("第二題")
for i in lottoNumbers.reversed(){
    print(i)
}
print("第二題之二")
for i in lottoNumbers where i % 2 == 0 {
    print(i)
}

//3
print("第三題")
var number = lottoNumbers.count
while number > 0 {
    print(lottoNumbers[number-1])
    number -= 1
}

print("第三題之二")
number = lottoNumbers.count
var initnumber = 0
while initnumber < number{
    if initnumber % 2 == 0 {
        print(lottoNumbers[initnumber])
    }
    initnumber += 1
}

//4
print("第四題")
repeat {
    print(lottoNumbers[number-1])
    number -= 1
}while number > 0

print("第四題之二")
number = lottoNumbers.count
initnumber = 0
repeat{
    if initnumber % 2 == 0 {
        print(lottoNumbers[initnumber])
    }
    initnumber += 1
}while initnumber < number

//5
// 差別在 repeat-while一定會先執行一次，之後的才會檢查條件

//6
print("第六題")
var isRaing =  "weather"

if isRaing  == "raining"{
    print("It’s raining, I don’t want to work today.")
}
else{
    print("Although it’s sunny, I still don’t want to work today.")
}

//7
print("第七題")
var jobLevel : Int = 6
print("if-else")
if jobLevel == 1 {
    print("Member")
}else if jobLevel == 2 {
    print("TeamLeader")
}else if jobLevel == 3 {
    print("Manager")
}else if jobLevel == 4 {
    print("Director")
}else{
    print("We don't have this job")
}

print("switch")
switch jobLevel {
case 1 : print("Member")
case 2 : print("TeamLeader")
case 3 : print("Manager")
case 4 : print("Director")
default : print("We don't have this job")
}
