//
//  testModel.swift
//  relam_Study
//
//  Created by 여성일 on 2023/09/20.
//

import Foundation
import RealmSwift

// --- MARK ---
// Define: Test Realm Model Object
class testModel:Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var _name: String
    @Persisted var _age: Int
    @Persisted var _etc: String
    @Persisted var _status: Bool = true
    
    convenience init(name:String, age:Int, etc:String) {
        self.init()
        self._name = name
        self._age = age
        self._etc = etc
    }
}


// User
// Group
// Other

// Read
// Write
// eXcute


// RWX : 4 2 1 , 4 2 1 , 4 2 1


// FIFO,
