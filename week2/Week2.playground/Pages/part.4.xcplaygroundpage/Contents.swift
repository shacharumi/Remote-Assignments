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


var a = GuessNumberGame().guess(number: 20)
