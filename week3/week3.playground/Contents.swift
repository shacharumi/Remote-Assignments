//1.closure是可被呼叫的函數，其功能與function類似，但是不需要function名稱，所以又被稱為匿名函數
//closure執行需要儲存在變數，以下是Apple官方語法
/*
 {{(變數) -> 回傳型態 in
    敘述..
 }
 */
//以下是範例
var test = {(name : String) -> () in
    print("\(name) Hello World")
}
test("Roger")


//2.

var isOdd = { (number : Int) -> Bool in
    return number % 2 != 0
}

print(isOdd(5))
print(isOdd(2))

func printTriangle(layers : Int){

    for i in 0 ... layers{
        for j in 0 ... i{
            print("*" , terminator: "")
        }
        print("")
    }
}

printTriangle(layers: 5)
