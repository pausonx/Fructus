//
//  SetttingsLabelView.swift
//  Fructus
//
//  Created by Paulina Wyskiel on 15/03/2023.
//

import SwiftUI

struct SetttingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SetttingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SetttingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
