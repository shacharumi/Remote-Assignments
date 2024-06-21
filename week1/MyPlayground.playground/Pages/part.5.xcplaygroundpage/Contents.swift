//1
// 分別回傳的是 String 跟 Double 型態

//2
print("第二題")
func multiply(a : Int , b : Int = 10 ){
    print (a * b)
}

multiply(a : 3)

//3
//呼叫函式時使用的參數是argument label
//函式裡面存取的參數是parameter name

//4
print("第四題")
func greet(person name : String) -> String{
    return "Hello," + name
}
print(greet(person: "Luke"))
