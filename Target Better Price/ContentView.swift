//
//  ContentView.swift
//  Target Better Price
//
//  Created by Luis Medina on 3/14/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack{
                Color.black
                .ignoresSafeArea()
                .overlay {
                    HStack(spacing: 20) {
                            
                        NavigationLink(destination: EnterDataView(address: "", tcin: "", distance: 0.0)) {
                            Text("Start New Search")
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .navigationBarBackButtonHidden()
                        
                        NavigationLink(destination: PriorSearchesView()) {
                            Text("Existing Searches")
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .navigationBarBackButtonHidden()
                        
                    }
                }
            }
            .navigationTitle("Target better price") // Title shown across all screens
            .navigationBarBackButtonHidden()
            .background(Color.white)
            
//            .navigationBarColor(UIColor.black)
//            .edgesIgnoringSafeArea(.all)
//
            
        }

    }
    
}

#Preview {
    ContentView()
}
