//
//  JoinRoomView.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct JoinRoomView: View {
    
    var body: some View {
        VStack {
            HeaderImage()
            
            VStack {
                BlueTitleTextLabel(textLabel: "Masukkan kode ruangan")
                    .frame(height: 43)
                KodeRuanganTextField()
            }.padding()
            Spacer()
            
            BlueSubmitButton(buttonText: "Cari")
                .padding()
        }
    }
}

struct JoinRoomView_Previews: PreviewProvider {
    static var previews: some View {
        JoinRoomView()
    }
}
