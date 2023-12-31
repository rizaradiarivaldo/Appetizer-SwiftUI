//
//  ContentView.swift
//  Appetizers
//
//  Created by Riza Radia Rivaldo on 11/12/23.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView().tabItem { Label("Home", systemImage: "house") }
            AccountView().tabItem { Label("Account", systemImage: "person") }
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
        .tint(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView().environmentObject(Order())
}

