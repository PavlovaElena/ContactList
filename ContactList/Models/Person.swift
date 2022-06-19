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
        
        let names = Array(DataManager.shared.names)
        let surnames = Array(DataManager.shared.surnames)
        let phones = Array(DataManager.shared.phones)
        let emails = Array(DataManager.shared.emails)
        
        let personCount = min(names.count,
                              surnames.count,
                              phones.count,
                              emails.count
        )
        
        for person in 0..<personCount {
            let person = Person(name: names[person],
                                surname: surnames[person],
                                phoneNumber: phones[person],
                                email: emails[person]
            )
            
            personArray.append(person)
        }
        
        return personArray
    }
}
