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
        //        do {
        //            try realmInstance.delete {
        //                completion
        //            }
        //        } catch {
        //            debugPrint("realm Delete Err \(error)")
        //        }
        //        do {
        //            try realmInstance.delete(model)
        //        } catch {
        //            debugPrint("Delete Err \(error)")
        //            return
        //        }
        //    }
        // TestCode
        do {
            try realmInstance.write {
                realmInstance.add(model)
            }
        }catch {
            debugPrint("Test : realm DB Delete ERR. \(error)")
            return
        }
    }
    
    @objc private func realmTestCode() {
        
    }
}
