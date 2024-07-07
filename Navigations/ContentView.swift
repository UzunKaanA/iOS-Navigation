//
//  ContentView.swift
//  Navigations
//
//  Created by Kaan Uzun on 7.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    let itemName: String
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                //Adding NavigationLink moves the user to item Screen
                NavigationLink(
                    destination: ItemDetailView(
                    itemName: "Shrimp Chips"),
                               label: {
                    Text("Shrimp Chips")
                })
                Spacer()
            }
            .navigationTitle(Text("Kaan's Store"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView(itemName: "Test Item")
}
