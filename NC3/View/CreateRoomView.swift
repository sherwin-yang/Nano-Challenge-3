//
//  CreateRoomView.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct CreateRoomView: View {
    @State var jumlahPemain_TextField: Int = 0  
    
    var body: some View {
        VStack {
            VStack {
                BlueTitleTextLabel(textLabel: "Buat ruangan bermain kamu, yuk!")
                    .frame(height: 81)
            }.padding()
            
            Spacer()
                .frame(width: 291, height: 4)
                .background(Color(red: 118/256, green: 201/256, blue: 247/256))
            
            VStack {
                VStack(alignment: .leading) {
                    BlueBodyTextLabel(textLabel: "Kode Ruangan")
                    KodeRuanganTextField()
                }.padding()
                VStack(alignment: .leading) {
                    BlueBodyTextLabel(textLabel: "Kategori Ruangan")
                    KodeRuanganTextField()
                }.padding()
                VStack(alignment: .leading) {
                    BlueBodyTextLabel(textLabel: "Jumlah Pemain")
                    HStack{
                        TextField("", value: $jumlahPemain_TextField, formatter: NumberFormatter())
                            .frame(width: 135, height: 56)
                            .background(Color.white)
                            .cornerRadius(6)
                            .shadow(color: Color(red: 229/256, green: 229/256, blue: 229/256), radius: 20, x: 0, y: 4)
                            .font(.system(size: 30))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 25/256, green: 37/256, blue: 114/256))
                        Button(action: {
                            if (self.jumlahPemain_TextField > 0) {
                                self.jumlahPemain_TextField -= 1
                            }
                        }) {
                            Text("-")
                                .frame(width: 68, height: 52)
                                .background(Color(red: 223/256, green: 57/256, blue: 76/256))
                                .cornerRadius(6)
                                .shadow(color: Color(red: 0/256, green: 0/256, blue: 0/256, opacity: 0.25), radius: 4, x: 0, y: 4)
                                .foregroundColor(Color.white)
                                .font(.system(size: 36))
                        }
                        Button(action: {
                            if (self.jumlahPemain_TextField < 6) {
                                self.jumlahPemain_TextField += 1
                            }
                        }) {
                            Text("+")
                                .frame(width: 68, height: 52)
                                .background(Color(red: 49/256, green: 191/256, blue: 106/256))
                                .cornerRadius(6)
                                .shadow(color: Color(red: 0/256, green: 0/256, blue: 0/256, opacity: 0.25), radius: 4, x: 0, y: 4)
                                .foregroundColor(Color.white)
                                .font(.system(size: 36))
                        }
                    }
                }.padding()
            }.padding()
            Spacer()
            VStack {
                BlueSubmitButton(buttonText: "Selesai")
            }
            FooterImage()
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct CreateRoomView_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomView()
    }
}
