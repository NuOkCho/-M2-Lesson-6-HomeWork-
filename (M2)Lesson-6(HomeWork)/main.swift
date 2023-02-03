import Foundation

/*
 Домашнее задание №6.

 Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.
*/

let dataBase = DataBase()
while true {
    print("Имя:")
    let username = readLine()!
    print("Фамилия:")
    let lastName = readLine()!
    print("Введите код своей страны:")
    let codeCountry = readLine()!
    let code: CountryCode!
    switch codeCountry {
    case "Америка": code = .USA
    case "Кыргызстан": code = .KYRGYZSTAN
    case "Россия": code = .Russia
    default:
        code = .USA
    }
    print("Введите ваш номер телефона:")
    let Number = readLine()!
    let user = User(name: username, surname: lastName, number: Number, code: code)
    dataBase.addUser(add: user)
    dataBase.showInfo()
    print("Если хотите добавить пользователя введите Да")
    let answer = readLine()!
    if answer != "Да" {
        break
    }
}
