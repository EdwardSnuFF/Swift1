import UIKit
//1. Решить квадратное уравнение.

let Equation = "(x^2)-5x+12=0" //квадратное уравнение типа a(x^2) + bx + c
let a = 1 //задаём  а
let b = -5 //задаём  b
let c = 12 //задаём  c
let Discriminant = sqrt((Double)(b*b)-(Double)(4*a*c)) //находим чему равен дискрименант
if Discriminant == 0 {let Radical = ((Double)(b)*(Double)(-1))/((Double)(2)*(Double)(a)) //находим корень уравнения если дискрименант равен 0
    print("У уравнения (Equation) один корень и он равен (Radical)")
} else if Discriminant < 0 {print("У уравнения (Equation) имеет мнимые корни т.е они принадлижат комплексным числам т.е в школьной математике у таких уравнений нет корней") // здесь находим корен уравнения если дискреминант меньше 0
} else { let RadicalOne = ((Double)(b)*(Double)(-1) - Discriminant)/((Double)(2)*(Double)(a)) // здесь мы находим корни уравнения если дискрименант больше нуля и его первый корень
    let RadicalTwo = ((Double)(b)*(Double)(-1) + Discriminant)/((Double)(2)*(Double)(a)) // находим второй корень
    print("У уравнения (Equation) два корня (RadicalOne) и (RadicalTwo)")
}
//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
let СathetA = 3 //задаём длину катету а
let СathetB = 4 //задаём длину катету b
let Yardage = (Double)(СathetA * СathetB) / 2.0 //находим площадь треугольника
let HypotenuseC = sqrt((Double)(СathetA * СathetA) + (Double)(СathetB * СathetB)) //находим длину гипотенузы
let Perimeter = (Double)(СathetB + СathetA) + HypotenuseC //находим периметр треугольника
print("Площадь треугольника равна (Yardage), периметр треугольника равен (Perimeter) и длина гипотенузы треугольника равна (HypotenuseC)")
//3. *Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
typealias Ruble = Double
typealias Percent = Double
var AmountOfDeposit : Ruble = 45.0 // здесь мы задаём сумму первоночального вклада
var MeterYears = 1
let AnnualPercentage : Percent = 10.0 // здесь мы задаём гадовой процент
while MeterYears <= 5 {
    let OnePercent = AmountOfDeposit / 100.0 //здесь мы находим чему равен один процент вклада
    let AnnualIncome = OnePercent * AnnualPercentage
    AmountOfDeposit = AmountOfDeposit + AnnualIncome // здесь мы находим сумму вклада через год
    MeterYears += 1
}
print("Сумма вклада через 5 лет равна (AmountOfDeposit)")
