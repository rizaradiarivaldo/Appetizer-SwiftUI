//
//  APButton.swift
//  Appetizers
//
//  Created by Riza Radia Rivaldo on 25/12/23.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color.brandPrimary)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    APButton(title: "Add to Order")
}
