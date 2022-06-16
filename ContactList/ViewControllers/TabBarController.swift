//
//  TabBarController.swift
//  ContactList
//
//  Created by Elena Pavlova on 15.06.2022.
//

import UIKit

class TabBarController: UITabBarController {

    let contactList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }

    private func setupTabBar() {
        guard let personListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let detailPersonsListVC = viewControllers?.last as? DetailPersonsListViewController else { return }
        
        personListVC.persons = contactList
        detailPersonsListVC.persons = contactList
    }
}

