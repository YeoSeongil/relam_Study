//
//  testModel.swift
//  relam_Study
//
//  Created by 여성일 on 2023/09/20.
//

import Foundation
import RealmSwift

class testModel:Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var _name: String
    @Persisted var _age: Int
}