//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Elena Pavlova on 15.06.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "E-mail: \(person.email)"
    }
}
