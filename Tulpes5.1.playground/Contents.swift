import UIKit


//1) Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.
let infoHuman = (332, "Anna", "Green.Street")
print(infoHuman)
print("Her name is \(infoHuman.1).She live is:\(infoHuman.2),and her  home-number is \(infoHuman.0) ")
let (number, name, adress) = infoHuman
print("My name is \(name), i live in \(adress), my home-number is:\(number)")


//Задача. Создать кортеж с тремя параметрами:
//первый - превышение скорости: количество пойманных;
//второй - вождение нетрезвым: количество пойманных;
//третий - бесправники: количество пойманных.
//Распечатайте наших бедокуров в консоль через print().


let violators = (firstOffense: 12 , secondOffense: 8, thridOffense: 7)
print("превышение скорости:\(violators.firstOffense) \r вождение нетрезвым:\(violators.secondOffense) \r  бесправники:\(violators.thridOffense)" )

//3) Выведите каждый параметр в консоль. Тремя способами.
print(violators.0 , violators.1 , violators.2)
print(violators.firstOffense, violators.secondOffense , violators.thridOffense)
print(violators)

// Создайте второй кортеж — нашего напарника. Значения задайте другие.

let violatorsTwo = (firstOffense: 3 , secondOffense: 6, thridOffense: 4)

//Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.
//Вывести в консоль тремя способами.

let violatorsThree = (violators.firstOffense - violatorsTwo.firstOffense , violators.secondOffense - violatorsTwo.secondOffense , violators.thridOffense - violatorsTwo.thridOffense)
let (firstOffensee , secondOffensee , thirdOffensee) = violatorsThree
print(violatorsThree)
print(firstOffensee, secondOffensee , thirdOffensee)
print(violatorsThree.0 , violatorsThree.1 , violatorsThree.2)

//ПРОДВИНУТЫЙ УРОВЕНЬ

//1.Создать 10 кортежей-разработчиков, каждый с 4 параметрами: имя, возраст, опыт, специальность. Пока не задавайте никаких данных.
var delvoperOne = (Name: "" , Age : 0 , Exp : true, spec: ""  )
var delvoperTwo = (Name: "" , Age : 0 , Exp :  true, spec: ""  )
var delvoperThree = (Name: "" , Age : 0 , Exp : true, spec: ""  )
var delvoperFour = (Name: "" , Age : 0 , Exp :  true, spec: ""  )
var delvoperFive = (Name: "" , Age : 0 , Exp :  true, spec: ""  )
var delvoperSix = (Name: "" , Age : 0 , Exp :  true, spec: ""  )
var delvoperSeven = (Name: "" , Age : 0 , Exp :  true, spec: ""  )
var delvoperEghit = (Name: "" , Age : 0 , Exp :  true, spec: ""  )
var delvoperNine = (Name: "" , Age : 0 , Exp :  true, spec: ""  )
var delvoperTen = (Name: "" , Age : 0 , Exp :  true, spec: ""  )

//2.После создания всем задайте имя, 3 из них — задайте возраст (любые значения выше 23),4 — опыт и только 2 — специальность.
var delvopers = [("Gary", 31 , true, "ios"),
                 ("Ben", 0 , false, "andriod" ),
                 ("Den", 0 , true, "andriod" ),
                 ("Ken", 25 , false, "andriod" ),
                 ("Daria", 0 , true, "nothing" ),
                 ("Max", 40 , true , "ios" ),
                 ("Andrue", 0 , false, "ios" ),
                  ("Kenny", 10 , true, "ios" ),
                  ("Maria", 28 , false, "nothing" )]

var juniorsDev = [("Frank", 19 , false, "ios" )]

var notIos  = [("Alex", 21, true, "andriod" )]
//3.Используя проверки if/else, выводите сообщения по логике: если возраст больше 23, есть опыт и специальность это ios — в консоль выводите имя и сообщение- принят на работу.

//5.Создайте массив и в проверку из пункта 3 добавьте условие: если специальность не ios — добавить в созданный массив.
for delvoper in delvopers {
    if delvoper.1 >= 23, delvoper.2 != false, delvoper.3 == "ios"{
        print("\(delvoper.0)- принят на работу")
    }else if delvoper.1 < 23{
        juniorsDev.append(delvoper)
    }else if delvoper.3 != "ios"{
        notIos.append(delvoper)
    }
}

//4.Тех, кто младше 23, добавьте в массив и отсортируйте. Найдите в этом массиве максимальное значение и удалите его.
for jun in juniorsDev {
    if jun.1 >= 1, jun.2 != false, jun.3 == "ios"{
        juniorsDev.insert(jun, at: 0)
        //juniorsDev.removeFirst()
    }
}

print(notIos)
