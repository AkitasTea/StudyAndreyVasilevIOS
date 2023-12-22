import UIKit

//Создайте массив "дни в месяцах":
//Распечатайте элементы, содержащие количество дней в соответствующем месяце, используя цикл for и этот массив.

let daysInMounth = [31,28,31,30,31,30,31,31,30,31,30,31]
let mounth = ["Junary","Ferbary","March","April","May","June","July","August","Semptember","Octeber",      "November", "December"]


for index in 0..<daysInMounth.count {
    let days = daysInMounth[index]
    let month = mounth[index]
    print("\(days) days in \(month)")
}

//Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд.
                
                
                
var ages = [3, 9, 12, 15, 16, 19,20, 21, 30, 50, 72]

//for age in ages {
//    if age <  10{
//        print("твой возраст \(age), тебе нужно идти в садик")
//    }else if  age < 20{
//        print("Твой возраст \(age ), тебе нужно идти в школу")
//    }else if age > 20 && age < 50 {
//        print("твой возраст \(age), тебе нужно идти на работу")
//    }else if age >= 50 {
//        print("ТВой возраст \(age), тебе нужно уже никуда не нужно")
//    }
//}

for age in ages {
    switch age {
    case 0..<10:
        print("\(age) - Твой возраст меньше десяти,тебе нужно в садик.")
    case 10..<20:
        print("\(age) - Твой возраст.Тебе нужно в школу")
    case 20..<50:
        print("\(age) - в таком возрасте пора устраиваться на работу")
    case 50..<100:
        print("\(age) - тебе пора на пенсию чувак")
    default:
        break
    }
    
}
//В switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и высказывать через print мнение.

let assesstments = [1,2,3,4,5,6,7,8,9,10,11,12]

for assesstment in assesstments {
    if assesstment < 4 {
        print("\(assesstment) - неудовлетворительно")
    }else if assesstment < 7 {
        print("\(assesstment) -  удовлетворительно")
    }else if assesstment < 10{
        print ("\(assesstment) - хорошо")
    }else if assesstment > 9{
        print("\(assesstment) - отлчино")
    }
}

//for assesstment in assesstments {
//    switch assesstment{
//    case 1...3:
//        print("\(assesstment) неудовлетворительно")
//    case 4...6:
//        print("\(assesstment) удовлетворительно")
//    case 7...9:
//        print("\(assesstment) хорошо")
//    case 10...12:
//        print("\(assesstment)   отлчино")
//    default:break
//    }
//
//}
//Cоздать создайте цикл в цикле. В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов.

for _ in 1...200 {
    for i in 1... {
        if i == 15 {
            break
        }
        
    }
}
//ПРОДВИНУТЫЙ УРОВЕНЬ


//1) Сыграем в шахматы. У вас есть некоторое количество фигур на доске. Они расположены на определённых клетках. Ваша задача: делать ходы и сообщать об этом в консоль.
//2) Если ход пересекается с координатой фигуры — сообщать об этом в консоль.
//3) Если ход попадает на определённую координату — сообщать в консоль к примеру: «Шах» или «Мат».
//Примечание. В качестве координат можно использовать кортежи. Не забываем пользоваться switch и циклами.
//4) Если ход попадает на определённую координату — сделайте фигуру равной nil.

var  chessFigures = ["Peshka" : "A5", "KING" : "C8" , "Queen": "B7" , "HORSE": "G6"]

for _ in chessFigures{
    print("Ваш ход")
    let move = readLine()
    switch  move {
    case "A1":
        print("не пересекается,делайте свой ход дальше")
    case "A5":
         print("Вы убили пешку")
        chessFigures.removeValue(forKey: "Peshka")
    case "C7":
        print("Шах и мат")
    default:
        print("мимо")
    }
}
