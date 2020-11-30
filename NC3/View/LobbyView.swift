//
//  LobbyView.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct LobbyView: View {
    var body: some View {
        VStack {
            HeaderImage()
            
            VStack {
                VStack {
                    BlueTitleTextLabel(textLabel: "Ruangan :")
                        .frame(height: 43)
                    DetailRuanganJumbotron(room_code: "1BXO", room_category: "Country", totalPlayers: 6)
                }.padding()
                
                BlueTitleTextLabel(textLabel: "Apakah kalian sudah siap?")
                    .frame(height: 43)
                    .padding()
                
                PlayersCollectionView()
                    .padding()
                
                VStack {
                    Text("Host akan segera memulai permainan jika semua sudah siap")
                        .font(.system(size : 14))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 223/256, green: 57/256, blue: 76/256))
                        .multilineTextAlignment(.center)
                        .frame(width: 263, height: 44)
                        .lineLimit(nil)
                        .offset(y: -20)
                    Button(action: {}) {
                        Text("Siap")
                            .frame(width: 193, height: 52)
                            .background(Color(red: 49/256, green: 191/256, blue: 106/256))
                            .cornerRadius(6)
                            .shadow(color: Color(red: 49/256, green: 191/256, blue: 106/256, opacity: 0.25), radius: 20, x: 0, y: 4)
                            .foregroundColor(Color.white)
                            .font(.system(size: 17))
                    }
                }.offset(y: 80)
            }.offset(y: -120)
        }
    }
}

struct LobbyView_Previews: PreviewProvider {
    static var previews: some View {
        LobbyView()
    }
}
