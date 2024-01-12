//
//  myCurrencyModel.swift
//  relam_Study
//
//  Created by 여성일 on 1/11/24.
//

import Foundation
import RealmSwift

class MyCurrency: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var currencyCode: String
    
    convenience init(currencyCode: String) {
        self.init()
        self.currencyCode = currencyCode
    }
}
 
