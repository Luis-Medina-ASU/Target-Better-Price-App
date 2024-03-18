//
//  storeCollection.swift
//  Target Better Price
//
//  Created by Luis Medina on 3/14/24.
//

import Foundation
import CoreData

class storeCollection: ObservableObject{
    @Published var inStockStores: [UUID: store] = [:]
    var nearbyStores: [store] = []


    
    // will call APIs to find stores within distance with product and get final prices
    func searchForStores(location: String, distance: Double, tcin: String) {
        
        // find stores within distance of location
        
        // search each store for
        for store in nearbyStores {
            // go through each store and make sure it has the product in stock
            
            // if its in stock, add it to the store variable
        }
        
        // For each store that has the product in stock, call tax api to get effective tax rates
        
        
        // Save stores to database
    }
}

class APIClient {
    // Define methods to call APIs
    
    func getStores(location: String, distance: Double, completion: @escaping ([store]?) -> Void) {
        // Implement API call to get stores
        // For simplicity, returning nil here
        completion(nil)
    }
    
    func getProducts(storeID: String, tcin: String, completion: @escaping ([product]?) -> Void) {
        // Implement API call to get products
        // For simplicity, returning nil here
        completion(nil)
    }
    
    func getTaxRates(productID: String, completion: @escaping (Double?) -> Void) {
        // Implement API call to get tax rates
        // For simplicity, returning nil here
        completion(nil)
    }
}

class StoreEntity: NSManagedObject {
    @NSManaged var storeNumber: String?
    @NSManaged var storeAddress: String?
    @NSManaged var taxRate: Double
    @NSManaged var distance: Double
}

class ProductEntity: NSManagedObject {
    @NSManaged var name: String?
    @NSManaged var price: Double
}
