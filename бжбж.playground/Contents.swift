import Foundation
//
//func great(_ name: String, _ owner: String) -> String {
//
//    if name == owner {
//        return "Hello boss"
//    } else if name != owner {
//        return "Hello guest"
//    } else {
//        return ("Invalid input")
//    }
//}
//
//great("Nikita", "Nikita")
//
//
//
//func sumOfPositives (_ array: [Int] ) -> Int {
//
//    var sum = 0;
//
//    for number in array{
//        if number > 0{
//            sum += number
//        }
//    }
//
//    return sum;
//}
//
//sumOfPositives([5,-12,7,-9,-6,45,7,-345])
//
//
//
//
//func sumMix(_ arr: [Any]) -> Int {
//    var sum = 0
//
//    for firstEteration in arr {
//
//        if let secondEteration = firstEteration as? String {
//
//            if let thirdEtaration = Int(secondEteration) {
//                sum += thirdEtaration
//            }
//
//        }else if let fourEteration = firstEteration as? Int {
//            sum += fourEteration
//        }
//
//    }
//
//    return sum
//}
//
//
//sumMix([1,456,"2352",475,987,123,34,2, "436",])
//
//
//
//
//func switchItUp(_ number: Int) -> String {
//
//    let oneN = "One"
//    let twoN = "Two"
//    let threeN = "Three"
//    let fourN = "Four"
//    let fiveN = "Five"
//    let sixN = "Six"
//    let sevenN = "Seven"
//    let eightN = "Eight"
//    let nineN = "Nine"
//    let zeroN = "Zero"
//
//    switch number {
//    case 1:
//        return oneN
//    case 2:
//        return twoN
//    case 3:
//        return threeN
//    case 4:
//        return fourN
//    case 5:
//        return fiveN
//    case 6:
//        return sixN
//    case 7:
//        return sevenN
//    case 8:
//        return eightN
//    case 9:
//        return nineN
//    case 0:
//        return zeroN
//    default:
//        return("Invalid error")
//    }
//}
//
//switchItUp(2)
//
//
//
//
//
//func squareSum(_ vals: [Int]) -> Int {
//  var sum = 0
//
//  for i in vals{
//    let sukk = i * i
//    sum += sukk
//
//  }
//
//  return sum
//}
//
//squareSum([1, 2, 3])
//
//
//func summation(_ n: Int) -> Int {
//  var sum = 0
//
//  for i in 0...n {
//    sum += i
//  }
//
//  return sum
//}
//
//
//
//func update_light(_ current: String) -> String {
//  var grCol = "green"
//  var yeCol = "yellow"
//  var reCol = "red"
//
//    switch current {
//    case grCol:
//        return yeCol
//    case yeCol:
//        return reCol
//    case reCol:
//        return grCol
//    default:
//        return "Invalid input"
//    }
//
//}
//
//update_light("yellow")
//
//
//func otherAngle(a: Int, b: Int) -> Int {
//
//  var c = 0
//
//  c = 180 - (a + b)
//
//  return c
//}




class Student {
    //Это свойства класса Student
    var name : String
    var surname : String
    var yearOfBorn : Int
    var mark : Double
    var fullname: String {
        return name + " " + surname
    }

    //Это метод класса Student
    func uffF() -> String {
        return "His name is \(name) \(surname), and his year of born is \(yearOfBorn), he is study at mark: \(mark)"
    }

    //Инициализация класса Student
    init(name: String, surname : String, yearOfBorn : Int, mark : Double) {
        self.name = name
        self.surname = surname
        self.yearOfBorn = yearOfBorn
        self.mark = mark
    }
}

//Наследуемый класс
class Hanugasumi: Student {
    var nick: String

    override func uffF() -> String {
        let newUffF = super.uffF()
        return newUffF + " and he's pretty nice boy"
    }

    init(nick: String){
        self.nick = nick
        super.init(name: "", surname: "", yearOfBorn: 0, mark: 0.0)
    }
}

let hanagasumi = Hanugasumi(nick: "Ebaaaat")
hanagasumi.mark
hanagasumi.uffF()

let Mikey = Student(name: "Mikey", surname: "Vazniy", yearOfBorn: 2005, mark: 4.2)
let Nikita = Student(name: "Nikita", surname: "Sukk", yearOfBorn: 2004, mark: 3.0)
let Vova = Student(name: "Vova", surname: "Blyaaa", yearOfBorn: 2006, mark: 5)
let Tom = Student(name: "Tom", surname: "UstalPridumivat", yearOfBorn: 2005, mark: 3.6)
Vova.mark

var arrayM = [Mikey.mark, Nikita.mark, Vova.mark, Tom.mark]

var newArrayM = arrayM.sorted(by: >)

Mikey.fullname




class WorkBook {
    //Условие: есть тест(текст) состояищй из определенного кол-ва слов и этот тест нужно распределить в какое то количество тетрадей, в каждой из которой 12 страниц. Мы должны иметь возможность быстро вычислить кол-во требуемых тетрадей для текста.
    class var maxPages: Int { return 12 }
    //количество слов в тексте
    var text: Int
    //количество слов на странице
    var wordsOnPage: Int
    
    //деление кол-ва слов в тексте на кол-во слов на странице
    var pages: (Int, Int) {
        let pageCount = text / wordsOnPage
        let remainder = text % wordsOnPage
        return (pageCount, remainder)
    }
    
    var calcWorkBookQuantity: Int {
        if pages.1 != 0{
            return pages.0 + Int(ceil(Double(pages.1)))
        } else {
            return pages.0
        }
        
    }
    
    lazy var fffEb: () = randomZalup()
    
    func randomZalup() {
        print("WTF man, why you did this")
    }
    
    init(text: Int, wordsOnPage: Int) {
        self.text = text
        self.wordsOnPage = wordsOnPage
    }
}

 let TestEngOne = WorkBook(text: 421, wordsOnPage: 60)
TestEngOne.calcWorkBookQuantity
TestEngOne.fffEb
