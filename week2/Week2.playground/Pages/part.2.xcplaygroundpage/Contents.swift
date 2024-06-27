//1.
enum Gasoline : String{
    case Gasoline_92 = "92"
    case Gasoline_95 = "95"
    case Gasoline_98 = "98"
    case diesel = "diesel"
    
    
    
    var price : Double{
        switch self{
        case .Gasoline_92 :
            return 29.0
        case .Gasoline_95 :
            return 30.0
        case .Gasoline_98 :
            return 32.0
        case .diesel :
            return 18.5
        }
    }
    
    func getPrice() -> Double {
        return self.price
    }
}

let a : Gasoline = .Gasoline_92
var b = a.price
var c = a.getPrice()

/*
 Associated Value指的是在enum中，每個case還可以儲存不同類型的相關聯資料
 以下舉例如何運作
 */

enum test {
    case student (age : Int , name : String)
}
let x : test = .student(age: 10, name: "Leo")

//2.
class Pet {
    var name : String
    
    init(name: String) {
        self.name = name
    }
}

class People{
    var pet : Pet?
    
    init(pet: Pet? = nil) {
        self.pet = pet
    }
}

func guard_let_checkPetName (person : People){
    guard let petName = person.pet?.name else{
        print("person has no pet")
        return
    }
    print("Pet's name is \(petName)")
}



func if_let_checkPetName(person : People){
    if let petName = person.pet?.name{
        print("Pet's name is \(petName)")
    }else{
        print("person has no pet")
    }
}

let person = People(pet : Pet(name : "NL"))
let person2 = People(pet : nil)
guard_let_checkPetName(person: person)
if_let_checkPetName(person: person2)






