//
//  VideoModel.swift
//  Africa
//
//  Created by justin.bitancor on 10/12/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        return "video-\(id)"
    }
}

