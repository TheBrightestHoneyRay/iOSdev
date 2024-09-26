//
//  ContentView.swift
//  assignment3
//
//  Created by Балнур Бектасова on 25.09.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var path = [Item]()
    @Query var list: [Item]
    
    var body: some View {
        
        NavigationStack(path: $path){
            List{
                ForEach(list){
                    item in NavigationLink(value: item){
                        Text(item.name)
                    }
                    
                }
            }
            .navigationTitle("Shopping list")
            .navigationDestination(for: Item.self){
                item in Text(item.name)
            }
            .toolbar{
                Button("Add item", systemImage:"plus", action: addItem)
            }
        }
    }
    
    func addItem(){
        let item = Item(name: "")
        modelContext.insert(item)
        path.append(item)
    }
}

#Preview {
    ContentView()
}
