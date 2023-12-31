//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Riza Radia Rivaldo on 12/12/23.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack {
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        placeholder: {
                Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(Color.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading )
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
