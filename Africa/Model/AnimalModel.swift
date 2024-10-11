//
//  AnimalModel.swift
//  Africa
//
//  Created by justin.bitancor on 10/11/24.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id : String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
