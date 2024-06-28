enum GuessNumberGameError : Error{
    case wrongNumber
}
class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}



do {
    try GuessNumberGame().guess(number:20)
}catch GuessNumberGameError.wrongNumber{
    print("wrong number")
}catch{
    print("other error")
}
