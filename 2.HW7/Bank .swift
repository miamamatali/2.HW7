//
//  Bank .swift
//  2.HW7
//
//  Created by Indira on 3/2/23.
//

import Foundation

class Bank {
     
    func transfer(fromClient: Client, toClient: Client) {
        print("Выберите Банк:")
        for (index, item) in fromClient.cards.enumerated() {
            print("\(index ) \(item.bankname)")
        }
        
        let readline = Int(readLine()!)!
        let selectedCard = fromClient.cards[readline]
        print("Выберите: \(selectedCard.bankname)")
        
        print("укажите номер карты")
        let toCardNumberTransfer = readLine()!
        
        var toCard: Card?
        var toClientName = ""
        for client in [toClient] {
            for card in client.cards {
                if card.cardnumber == toCardNumberTransfer {
                    toCard = card
                    toClientName = "\(client.firstname) \(client.lastname)"
                    break
                }
            }
        }
        
        if let toCard = toCard {
            print("Получатель: \(toClientName)")
            
            print("Укажите число:")
            let amount = Int(readLine()!)!
            
            if amount > selectedCard.bill {
                print("не достаточно средств на вашей карте")
            } else {
                selectedCard.bill -= amount
                toCard.bill += amount
                print("\(amount) перевод успешно проведен")
            }
        } else {
            print("Карта не найдена")
        }
    }
}


