//
//  VideoPlayerView.swift
//  Africa
//
//  Created by justin.bitancor on 10/12/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    
    var videoSelected: String
    var videoTitle: String
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
//                Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
                
            )
        } //: VSTACK
        .accentColor(.accent)
        .navigationBarTitle(videoTitle)
        .toolbarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW

struct VideoPlayerView_Preview: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
