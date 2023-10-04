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
        
        // Create
        let test_model = testModel(name: "test_Model_01", age: 25)
        
        // Read
        let realm_Data = realm_Manager.readRealmData()
    
        // Update
        realm_Manager.updateRealmData {
            realm_Data[0]._name = "Test_Update_Name"
            realm_Data[0]._status = false
            realm_Data[0]._age = 123
        }
        
        // Delete 
        realm_Manager.deleteRealmData(model: realm_Data[2])
    }

    private func setView() {
        self.view.backgroundColor = .white
    }
}

