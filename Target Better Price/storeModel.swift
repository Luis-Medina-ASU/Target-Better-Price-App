//
//  storeModel.swift
//

import Foundation

struct product: Identifiable{
    var id = UUID()
    var name: String? = nil
    var tcin: String? = nil
    var price: Double? = nil
}

class store: Identifiable{
    var id = UUID()
    var storeNumber: String? = nil
    var storeAddress: String? = nil
    var taxRate: Double? = nil
    var distance: Double? = nil
    var productInStock = product()
    
    init(id: UUID = UUID(), storeNumber: String? = nil, storeAddress: String? = nil, taxRate: Double? = nil, distance: Double? = nil, productInStock: product = product()) {
        self.id = id
        self.storeNumber = storeNumber
        self.storeAddress = storeAddress
        self.taxRate = taxRate
        self.distance = distance
        self.productInStock = productInStock
    }
}
