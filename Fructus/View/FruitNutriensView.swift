//
//  FruitNutriensView.swift
//  Fructus
//
//  Created by Paulina Wyskiel on 14/03/2023.
//

import SwiftUI

struct FruitNutriensView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    let nutriens: [String] = ["Energy", "Sugar", "Fat", "Protein", "Viatmins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0 ..< nutriens.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutriens[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
           
        }
    }
}


//MARK: - PREVIEW
struct FruitNutriensView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutriensView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
