//
//  ViewController.swift
//  relam_Study
//
//  Created by 여성일 on 2023/09/20.
//

import UIKit
import RealmSwift


class ViewController: UIViewController {

    let realm_Manager = RealmManager()
    
    override func viewDidLoad() {
        setView()
        let test_model = testModel(name: "test_code_name", age: 25)
        realm_Manager.createRealmData(model: test_model)
    }

    private func setView() {
        self.view.backgroundColor = .white
    }
}

