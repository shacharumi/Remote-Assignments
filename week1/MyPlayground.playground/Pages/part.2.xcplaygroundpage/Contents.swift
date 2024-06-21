/*:
 1.
 var宣告完後值可以改變
 let宣告完後值不可以改變
 */

// 2.
print("第二題")
//因為圓周率是不變的，所以用let
let pi : Double = 3.14159
var radius : Double = 2
var circumference : Double = 2 * pi * radius
print(circumference)

// 3.
print("第三題")
let x  : Int = 80
let y  : Int = 50
var average = (x + y) / 2
print(average)

// 4-1.
print("第四題")
print(Double(average))

//4-2
print("第四之二題")
print (10/3)
print (10.0/3,0)
//兩個整數相除，只會給出商，不會有小數點的部分

//5
print("第五題")
let a = 10
let b = 3
let remainder = 10%3
print(remainder)

//6
print("第六題")
var flag : Bool = true
var inputString : String = "Hello world"
let bitsInBite : Int = 8
let averageScroe : Double = 86.8

//7
/*
 Type Inference 可以自行推斷 = 後面的資料型態
 ex:  let a = 10 , 10為一個整數，所以Swift自行判斷a為Int型態
 */

//8
print("第八題")
var phoneNumber = 0912345678
print(type(of: phoneNumber))
/*
 根據Type Inference ， swift將phoneNumber的型態設為Int，所以不能將其設為字串Hello world
 */

//9
print("第九題")
var salary = 22000
salary += 28000
print(salary)

//10
print("第十題")
let c = 1
let d = 1
print(c == d)
//swift 的 Equality 是 "=="


