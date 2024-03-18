//
//  EnterDataView.swift
//  Target Better Price
//
//  Created by Luis Medina on 3/14/24.
//

import SwiftUI

struct EnterDataView: View {
    @State var store = storeCollection()
    @State var address: String
    @State var tcin: String
    @State var distance: Double
        
    var body: some View {
        NavigationView {
            Color.black
                .ignoresSafeArea()
                .overlay(content: {
                    VStack(spacing: 20) {
                        Text("Enter the Following information")
                            .foregroundStyle(.white)
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Address:")
                                .foregroundStyle(.white)
                            TextField("Enter Address", text: $address)
                                .padding()
                                .background(Color.white)
                            
                                .cornerRadius(8)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("TCIN:")
                                .foregroundStyle(.white)
                            TextField("Enter TCIN", text: $tcin)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Distance: \(Int(distance)) miles")
                                .foregroundStyle(.white)
                            Slider(value: $distance, in: 0...100, step: 1)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                            
                        }
                        
                        NavigationLink(destination: ResultsView()) {
                            Text("Search")
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                    .edgesIgnoringSafeArea(.all)
                })
        }
    }
}
    

#Preview {
    EnterDataView(address: "", tcin: "", distance: 0.0)
}
