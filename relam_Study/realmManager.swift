//
//  realmManager.swift
//  relam_Study
//
//  Created by 여성일 on 2023/09/21.
//

import Foundation
import RealmSwift

class RealmManager {
    let realmInstance = try! Realm()
    
    // --- MARK ---
    /// Define : realm DB create Data
    ///
    func createRealmData(model: testModel) {
        do {
            try realmInstance.write {
                realmInstance.add(model)
            }
        } catch {
            debugPrint("Create Err \(error)")
        }
    }
    
    // --- MARK ---
    /// Define: realm DB read Data
    ///
    func readRealmData() -> Results<testModel>{
        return realmInstance.objects(testModel.self)
    }
    
    // --- MARK ---
    /// Define : realm DB Update Data
    ///
    func updateRealmData(completion: () -> Void) {
        do{
            try realmInstance.write {
                completion()
            }
        } catch {
            debugPrint("Update Err \(error)")
            return
        }
    }
    
    // --- MARK ---
    /// Define : realm DB Delete Data
    func deleteRealmData(model: testModel) {
        do {
            try realmInstance.write {
                debugPrint("Start Delete \(model)")
                realmInstance.delete(model)
                debugPrint("Succeced Delete")
            }
        } catch {
            debugPrint("Delete Err \(error)")
            return
        }
    }
}
