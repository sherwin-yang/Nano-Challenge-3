//
//  HostStartGameView.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct HostStartGameView: View {
    var body: some View {
        VStack {
            HeaderImage()
            Spacer()
            VStack {
                VStack {
                    BlueTitleTextLabel(textLabel: "Ruangan :")
                        .frame(height: 43)
                    DetailRuanganJumbotron(room_code: "1BXO", room_category: "Country", totalPlayers: 6)
                }
                Spacer()
                BlueTitleTextLabel(textLabel: "Pemain : ")
                PlayersCollectionView()
            }.offset(y: -100)
            BlueSubmitButton(buttonText: "Mulai")
                .padding()
        }
    }
}

struct HostStartGameView_Previews: PreviewProvider {
    static var previews: some View {
        HostStartGameView()
    }
}
