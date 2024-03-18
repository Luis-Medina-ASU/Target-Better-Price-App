//
//  ResultsView.swift
//  Target Better Price
//
//  Created by Luis Medina on 3/14/24.
//

import SwiftUI

struct ResultsView: View {
    @State private var showList: Bool = false // State to toggle between list and map
    
    var body: some View {
        VStack {
            Toggle(isOn: $showList, label: {
                Text("Show on Map")
            })
            .padding()
            
            if !showList {
                ListView() // Show details in list
            } else {
                MapView() // Show details on map
            }
        }
        .navigationBarTitle("Results") // Set navigation title
    }
}

struct ListView: View {
    var body: some View {
        List {
            ForEach(0..<10) { index in // Sample data, replace with actual data
                VStack(alignment: .leading) {
                    Text("Store Address: Store \(index)")
                    Text("Store Distance: \(index) miles")
                    Text("Product Name: Product \(index)")
                    Text("Final Price: $\(index * 10)")
                }
            }
        }
    }
}

struct MapView: View {
    var body: some View {
        // Map implementation goes here
        Text("Map View Placeholder")
            .padding()
    }
}

#Preview {
    ResultsView()
}
