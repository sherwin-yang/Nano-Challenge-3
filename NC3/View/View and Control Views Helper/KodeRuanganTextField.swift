//
//  KodeRuanganTextField.swift
//  NC3
//
//  Created by Sherwin Yang on 11/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct KodeRuanganTextField: View {
    @State var room_code: String = ""
    
    var body: some View {
        TextField("_ _ _ _", text: $room_code)
            .frame(width: 291, height: 56)
            .background(Color.white)
            .cornerRadius(6)
            .shadow(color: Color(red: 229/256, green: 229/256, blue: 229/256), radius: 20, x: 0, y: 4)
            .font(.system(size: 30))
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 25/256, green: 37/256, blue: 114/256))
    }
}

struct KodeRuanganTextField_Previews: PreviewProvider {
    static var previews: some View {
        KodeRuanganTextField()
    }
}
