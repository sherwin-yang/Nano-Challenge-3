//
//  PlayersCollectionView.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct PlayersCollectionView: View {
    var playerImages: [AnyView] = [
        AnyView(Image("Robot 1")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 4))),
        AnyView(Image("Robot 2")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 4))),
        AnyView(Image("Robot 3")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 4))),
        AnyView(Image("Robot 1")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 4))),
        AnyView(Image("Robot 2")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 4))),
        AnyView(Image("Robot 3")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 4)))
    ]
    
    var body: some View {
        VStack {
            HStack {
                ForEach (0..<playerImages.count-3) { i in
                    self.playerImages[i]
                        .frame(width: 70, height: 70)
                        .padding()
                }
            }
            HStack {
                ForEach (3..<playerImages.count) { i in
                    self.playerImages[i]
                        .frame(width: 70, height: 70)
                        .padding()
                }
            }
        }
        
    }
}

struct PlayersCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersCollectionView()
    }
}
