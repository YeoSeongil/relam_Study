//
//  testModel.swift
//  relam_Study
//
//  Created by 여성일 on 2023/09/20.
//

import Foundation
import RealmSwift

// todo
// --- MARK ---
// Define: Test Realm Model Object
class testModel:Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var _name: String
    @Persisted var _oauthToken: String
    @Persisted var _etc: String
    @Persisted var _status: Bool = true
    
    convenience init(name:String, oauthToken:String, etc:String) {
        self.init()
        self._oauthToken = oauthToken
        self._name = name
        self._etc = etc
    }
}
