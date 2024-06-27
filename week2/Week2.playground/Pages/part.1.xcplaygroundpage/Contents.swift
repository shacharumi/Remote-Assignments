//1.
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender : Gender
    init(gender: Gender) {
        self.gender = gender
    }
    func eat(){
        print("I eat everything!")
    }
}


//2.

class Elephant : Animal {
    override func eat() {
        print("Elephant eats grass")
    }
}
class Tiger : Animal {
    override func eat() {
        print("Tiger eats meat")
    }
}
class Horse : Animal {
    override func eat() {
        print("Horse eats carrots")
    }
}

//3.

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) { 
        self.weeklyHot = weeklyHot
    }
}

let tiger = Tiger(gender: .undefined)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .male)
let zoo = Zoo(weeklyHot: Tiger(gender: .male))

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//4.
/*
 Instance是指當你建立一個Class/Struct的對象時，這個對象就是此類型的一個Instance
 Initializer可以實現初始化，主要作用是用來確保第一次使用類型的新實例之前正確的被初始化，因為初始值存儲的屬性不能為不確定的情況
 */

//5.
/*
 1.Class 是 Reference Type，Struct是 Value Type
 2.Class可以繼承，Struct不行
 3.Class的Initialzier要自己寫，Struct可以自動產生
 4.如果要修改自身Function的內部屬性，Struct需要加mutating，Class不用
 */

//6.
/*
 Value Type 是將原本的資料複製產生新的資料
 Reference Type 是共享同一份資料 (指向同一個記憶體位址)
 
 
 ex:
 class Car {
     var wheelNumber = 4
 }

 let car1 = Car()
 let car2 = car1

 car1.wheelNumber = 8
 print(car2.wheelNumber) // 8    因為指向同一個記憶體位址，所以當car1更改，car2也會跟著更改
 
 
 struct Car {
     var wheelNumber = 4
 }

 var car1 = Car()
 var car2 = car1

 car1.wheelNumber = 8
 print(car2.wheelNumber) // 4
 */


//7.

/*
 Instance method 要先生成一個特定類別的實體，才能使用這個實體裡的方法
 Type method 屬於特定類型本身的方法
 
 ex:
 class a {
    func c() ...
 }
 let b = a()
 b.c()
 
 struct a {
    func c() ...
 }
 a.c()
 
 */

//8.
/*
 Instance method 的self引用當前實例，可以用來區分實例屬性跟局部變數
 Type method 的self引用當前類型本身，可以用來訪問類屬性和類方法
 
 */
