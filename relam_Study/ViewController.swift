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
        //let test_Model = testModel(name: "new_version_schema_test_model", age: 99, etc: "schema version 2")
        //realm_Manager.createRealmData(model: test_Model)
        
        // Read
        let realm_Data = realm_Manager.readRealmData()
        
//        realm_Data.self.map {
//            self.realm_Manager.deleteRealmData(model: $0)
//        }
        
        realm_Manager.test_all_delete_method(model: realm_Data.map{$0})
        
        
        
        //debugPrint(test_realm_data_arr)
        // Update
        //        realm_Manager.updateRealmData {
        //            realm_Data[0]._name = "Test_Update_Name"
        //            realm_Data[0]._status = false
        //            realm_Data[0]._age = 123
        //        }
        
        // Delete
        
    }
    
    private func setView() {
        self.view.backgroundColor = .white
    }
}

