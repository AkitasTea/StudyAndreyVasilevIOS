
//Компьютерная программа - это набор инструкций

// Константы и переменные - Единицы информации

//let myName = "Roman"
//myName = "Diman" - Error! ( Значение констант менять нельзя )

//var myAge = 26
//myAge = 27

// Правила именования
//1. Правила хорошего тона
//- Стиль имени экземпляра - LowerCamelCase ( myAge,myName )
//- Стиль имени Типа - UpperCamelCase ( Классы,типы,структуры,протоколы,перечисления )
//- Осмысленные именнования
//- Использование символов латиницы

//2. Синтактические правила
//- Имя может начинаться с буквы, _, $,
//- Имя может содержать любой символ за исключением спецсимволов
//- Нельзя использовать в качестве имени уже зарезервированные системой слова

//Базовые Типы данных

//String - строка
let myName = "Roman"

//Character - символ
let char: Character = "d"

//Int - целое число
let a = 15 // краткая форма
let b: Int = 46 // полная форма
let c: Int = Int(46.6) // преобразование типов данных
39/40 // При делении отбрасывается дробная часть и берется целое число
// b/46.6 - Error!( Ошибка разных типов), нельзя делить целое число на дробное без преобразования

//Double - число с плавающей точкой
let double = 56.24
let dbl2: Double = 30

//Bool - логический ( булевый ) тип true/False (Да/Нет)
var isEmpty = false // (isEmpty- Пустой ли?)
isEmpty = true

//Строгая типизация в языке Swift
//1. Типы всех сущностей должны быть известны сразу же на этапе обьявления
//2. Типы всех сущностей не могу изменятся на протяжении всей их жизни
//3. Базовые операции возможны только между одинаковыми типами
//4. Разрешены только явные преобразования типов
//a / 34.2 = Error!
//Double(a) / 34.2 = false
//a / Int(34.2) = false
































