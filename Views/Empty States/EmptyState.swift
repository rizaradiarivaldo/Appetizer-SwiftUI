//
//  EmptyState.swift
//  Appetizers
//
//  Created by Riza Radia Rivaldo on 29/12/23.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text("\(message)")
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -30)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "You don't have order")
}
