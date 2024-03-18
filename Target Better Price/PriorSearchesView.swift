//
//  PriorSearchesView.swift
//  Target Better Price
//
//  Created by Luis Medina on 3/14/24.
//

import SwiftUI

struct PriorSearchesView: View {
    let priorSearches: [PriorSearch] = [
        PriorSearch(id: UUID(), number: 1, productName: "Product A"),
        PriorSearch(id: UUID(), number: 2, productName: "Product B"),
        PriorSearch(id: UUID(), number: 3, productName: "Product C")
    ]
    
    var body: some View {
        NavigationView {
            List(priorSearches) { search in
                VStack(alignment: .leading) {
                    Text("Search Number: \(search.number)")
                    Text("Product Name: \(search.productName)")
                }
            }
            .navigationTitle("Prior Searches")
        
        }
    }
}
struct PriorSearch: Identifiable {
    let id: UUID
    let number: Int
    let productName: String
}

#Preview {
    PriorSearchesView()
}
