import UIKit

//1) Создать 3 функции:
// первая функция принимает массив Int и сортирует его по порядку (возрастание). После
//этого распечатывает результат в консоль;
//вторая функция принимает массив String, меняет 1, 2 и 3 элементы и сортирует по
//алфавиту. После этого распечатывает результат в консоль;
// третья функция принимает 2 массива String и складывает их. После этого
//распечатывает результат в консоль.

func sortedInt(chisloOne: Int, chisloTwo: Int, chisloThree: Int){
    var numbers  = [chisloOne, chisloTwo, chisloThree]
    numbers.sort()
    print(numbers)
 
}

sortedInt(chisloOne: 5, chisloTwo: 2, chisloThree: 3)

func sortedStr(slovoOne: String, slovoTwo:String, SlovoThree:String){
    var str = [slovoOne,slovoTwo,SlovoThree]
    str.sort()
    print(str)
}
sortedStr(slovoOne: "Привет", slovoTwo: "Антарктида" , SlovoThree:"Лапа")

func sumStr(nameOne: String, surnameOne: String, nameTwo:String, surnameTwo:String){
    let massiveOne = [nameOne, surnameOne]
    let massiveTwo = [nameTwo,surnameTwo]
    let sumStrings = massiveOne + massiveTwo
    print(sumStrings)
}
sumStr(nameOne: "Alex", surnameOne: "Kouch", nameTwo: "Ivan", surnameTwo: "Goodman")

//2) Создать журнал для учителя, который будет принимать имя студента, профессию и оценку и записывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.

func forTeacher( name:String,   profession:String, ocenka: Int){
    let students  = [name:ocenka]
    for _ in students{
        print("У студента \(name), оценка \(ocenka)")
    }
}
forTeacher(name: "Лера ", profession: "Повар", ocenka: 5)
forTeacher(name: "Катя ", profession: "Медсестра", ocenka: 3 )
forTeacher(name: "Иван", profession: "Стоматолог", ocenka: 5)
forTeacher(name: "Николай", profession: "Тракторист", ocenka: 2)
forTeacher(name: "Дмитрий", profession: "Секретарь", ocenka: 4)
forTeacher(name: "Анастасия", profession: "Карьеристка", ocenka: 5)

//Создать функцию которая принимает имя и фамилию, потом положить это в массив и вывести результат в консоль.


func sayWhoYou(name:String, surname:String){
    var whoiam = ["Андрей", "Васильев"]
    whoiam.append(name )
    whoiam.append(surname )
    print(whoiam)
}
sayWhoYou(name: "Мария", surname:"Климанова")

//Создайте функцию которая принимает параметры и вычисляет площадь круга.
func area( r: Int){
    var areaOfcicrcle = 3 * pow(Decimal(r),2)
    print(areaOfcicrcle)
}

area(r: 4)

//Создайте Dictionary с именем ученики , где ключ name и score, а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.




func sayOcenki(){
    var students = [ "Андрей": 4, "Иван":3, "Максим":2, "Виктория":5]
    for student in students{
        print(student.key)
    }
}
sayOcenki()

//ПРОДВИНУТЫЙ УРОВЕНЬ

//Функция принимает 3 массива String. Задача: сложить их вместе, преобразовать в тип Int и посчитать сумму. Распечатать результат в консоль.

 var oneMassiveOfNumbers = [String]()
 var twoMassiveOfNumbers = [String]()
var  threeMassiveOfNumbers  = [String]()
var numberss = [Int]()


func summ(oneMassiveOfNumbers: [String], twoMassiveOfNumbers: [String], threeMassiveOfNumbers : [String]) -> Int{
    for numberOne in oneMassiveOfNumbers{
        if let numInt = Int(numberOne){
            numberss.append(numInt)
        }
    }
    for numbers in twoMassiveOfNumbers {
        if let numIntTwo = Int(numbers){
            numberss.append(numIntTwo)
        }
    }
    for numberThree in threeMassiveOfNumbers{
        if let numIntThree = Int(numberThree){
            numberss.append(numIntThree)
        }
    }
    let sum = numberss.reduce(0, +)
    return sum
}

let totalSumm = summ(oneMassiveOfNumbers: ["122","2"], twoMassiveOfNumbers: ["2","1"], threeMassiveOfNumbers: ["0","1"])
print(totalSumm)

//Создайте функцию, которая принимает строку-рассказ без пробелов и знаков препинаний, всё с маленькой буквы и на латинице.

func sadStory(story: String) -> String{
    var story = story
    story = story.replacingOccurrences(of: " ", with: "")
    story = story.components(separatedBy: .punctuationCharacters).joined()
    story = story.lowercased()
    return story
}


var s = sadStory(story: "Чайка - очень красивая и величественная птица. У неё белый окрас с серым оперением. она летает над просторами морей и океанов. Питается она рыбой ")
print(s)

