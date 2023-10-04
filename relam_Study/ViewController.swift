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
        
        debugPrint(realm_Data[0])
        
//        realm_Manager.updateRealmData {
//            realm_Data[0] = testModel(name: "Update", age: 10)
//        }
        
        realm_Manager.updateRealmData {
            realm_Data[0]._name = "Test_Update_Name"
            realm_Data[0]._status = false
            realm_Data[0]._age = 123
        }
    }

    private func setView() {
        self.view.backgroundColor = .white
    }
}

