//
//  main.swift
//  2.HW7
//
//  Created by Indira on 3/2/23.
//

import Foundation

print("Hello, World!")

//Создать класс Client c параметрами firstname, lastname. Cоздать класс Card c параметрами bankName, cardNumber и bill. Добавить в класс Client еще один параметр cards: [Card]. Cоздать класс Bank, в котором имеется функция перевода или оплаты денег. Функция должна запрашивать "Выберите карту", создается поле для ввода номера карты, после чего она должна распознать имя банка и запринтить в консоль. Затем запрашивается номер счета другого Сlient, вы вводите номер карты, в консоль должна отобразиться ФИО клиента. После чего запрашивается сумма и происходит перевод денег. Где сумма денег пробовать вводить неверные данные. В main cоздать объекты, заполнить данными и произвести перевод. Создать extension для класса Bank и добавить еще 2 функции перевода денег, но с разными вариантами работы с опциональностью. Чтобы произвести перевод вы в readline вводите String, cчет хранится в числах, соответственно нужно вводимую сумму переводить в число. Использовать в одной функции ??, в другой проверку на nil через if конструктор. Выводить нужные сообщения пользователю.


let card1 = Card(bankname: "Optima", cardnumber: "44512377", bill: 10000)
let card2 = Card(bankname: "Finca", cardnumber: "12650911", bill: 5000)
let client1 = Client(firstname: "Sasha", lastname: "Prize", cards: [card1, card2])

let card3 = Card(bankname: "Optima", cardnumber: "44512377", bill: 10000)
let client2 = Client(firstname: "Naka", lastname: "Ramsy ", cards: [card3])

let bank = Bank()
bank.transfer(fromClient: client1, toClient: client2)
