//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by justin.bitancor on 10/12/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "jttps://wikipedia.org")!)
                }
                .foregroundStyle(.accent)
                
            } //: HSTACK
        } //: GROUPBOX
    }
}


// MARK: - PREVIEWS

struct ExternalWeblinkView_Preview: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
