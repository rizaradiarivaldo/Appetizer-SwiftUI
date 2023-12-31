//
//  XDissmissButton.swift
//  Appetizers
//
//  Created by Riza Radia Rivaldo on 25/12/23.
//

import SwiftUI

struct XDissmissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
            
        }
    }
}

#Preview {
    XDissmissButton()
}
