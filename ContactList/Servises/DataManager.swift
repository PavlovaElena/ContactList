//
//  DataManager.swift
//  ContactList
//
//  Created by Elena Pavlova on 15.06.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Bruce", "John", "Steven", "Aaron", "Tim",
        "Allan", "Sharon", "Ted", "Carl", "Nicola"
    ]
    
    let surnames = [
        "Butler", "Smith", "Black", "Robertson", "Murphy",
        "Williams", "Isaacson", "Jankin", "Pennyworth", "Dow"
    ]
    
    let emails = [
        "jjjj@mail.ru", "eeee@mail.ru", "mmmm@mail.ru", "aaaa@mail.ru",
        "wwww@mail.ru", "llll@mail.ru", "ssss@mail.ru", "qqqq@mail.ru",
        "gggg@mail.ru", "rrrr@mail.ru"
    ]
    
    let phones = [
        "432349845", "825654134", "562880225", "287185656", "645889847",
        "459477625", "994512034", "293582001", "584256922", "882100348"
    ]
    
    private init() {}
}

