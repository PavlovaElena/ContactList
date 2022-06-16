//
//  Person.swift
//  ContactList
//
//  Created by Elena Pavlova on 15.06.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        
        var personArray: [Person] = []
        
        let namesMix = DataManager.shared.names.shuffled()
        let surnamesMix = DataManager.shared.surnames.shuffled()
        let phoneNumberMix = DataManager.shared.phones.shuffled()
        let emailMix = DataManager.shared.emails.shuffled()
        
        let personCount = min(namesMix.count, surnamesMix.count, phoneNumberMix.count, emailMix.count)
        
        for person in 0..<personCount {
            let person = Person(name: namesMix[person],
                                surname: surnamesMix[person],
                                phoneNumber: phoneNumberMix[person],
                                email: emailMix[person])
            personArray.append(person)
        }
        
        return personArray
    }
}
