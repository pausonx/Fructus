//
//  ContentView.swift
//  Fructus
//
//  Created by Paulina Wyskiel on 13/03/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERITIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: -BODY
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }//:NAVIGATION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
