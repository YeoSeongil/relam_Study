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
        let test_model = testModel(name: "test_Model_01", age: 25)
        
        let test_model2 = testModel(name: "test_Model_02", age: 26)
        
        let test_model_arr = [test_model, test_model2]
        
        let realm_Data = realm_Manager.readRealmData()
        
    debugPrint(realm_Data)
    }

    private func setView() {
        self.view.backgroundColor = .white
    }
}

