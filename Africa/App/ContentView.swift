//
//  ContentView.swift
//  Africa
//
//  Created by justin.bitancor on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            } //: List
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
