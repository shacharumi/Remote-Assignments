struct Person{
    var name : String
    var toolMan : ToolMan
}

protocol PoliceMan{
    func arrestCriminals()
}

extension Person : PoliceMan {
    func arrestCriminals(){
    }
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer : ToolMan {
    func fixComputer(){
    }
}

let Steven = Person(name: "Steven" , toolMan: Engineer())
Steven.toolMan.fixComputer()
