//
//  RoomInformationView.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct RoomInformationView: View {
    var room_code: String = "1BXO"
    var room_category: String = "Country"
    var totalPlayers: Int = 6
    var hostName: String = "Zidane"
    
    // Dummy
    var playerImages: [AnyView] = [
        AnyView(Image("Robot 1")
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
    
    var playersName = ["Zidane", "Adel", "Rara", "Handy", "Rara"]
    //
    
    var body: some View {
        VStack {
            HeaderImage()
            Spacer()
            VStack {
                VStack {
                    BlueTitleTextLabel(textLabel: "Kode Ruangan : ")
                        .frame(height: 43)
                    KodeRuanganTextField(room_code: room_code)
                    HStack {
                        VStack(alignment: .leading) {
                            BlueBodyTextLabel(textLabel: "Kategori Ruangan : \(room_category)")
                            BlueBodyTextLabel(textLabel: "Jumlah Pemain : \(totalPlayers) orang")
                            BlueBodyTextLabel(textLabel: "Host Ruangan : \(hostName)")
                        }
                        Spacer()
                    }.padding()
                }.padding().offset(y: -50)
                VStack {
                    BlueTitleTextLabel(textLabel: "Pemain yang bergabung : ")
                        .frame(height: 43)
                    VStack {
                        HStack {
                            ForEach (0..<playerImages.count-3) { i in
                                VStack {
                                    self.playerImages[i]
                                        .frame(width: 70, height: 70)
                                        .padding()
                                    BlueBodyTextLabel(textLabel: self.playersName[i])
                                }
                            }
                        }
                        HStack {
                            ForEach (3..<playerImages.count) { i in
                                VStack {
                                    self.playerImages[i]
                                        .frame(width: 70, height: 70)
                                        .padding()
                                    BlueBodyTextLabel(textLabel: self.playersName[i])
                                }
                            }
                        }
                    }
                }
            }.offset(y: -100)
            BlueSubmitButton(buttonText: "Lanjut")
            Spacer()
        }
    }
}

struct RoomInformationView_Previews: PreviewProvider {
    static var previews: some View {
        RoomInformationView()
    }
}
