//
//  DetailRuanganJumbotron.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct DetailRuanganJumbotron: View {
    var room_code: String = "1BXO"
    var room_category: String = "Country"
    var totalPlayers: Int = 0
    
    var body: some View {
        VStack {
            Text(room_code)
                .frame(width: 195, height: 37)
                .font(.system(size: 30))
                .foregroundColor(Color(red: 25/256, green: 37/256, blue: 114/256))
                .padding()
            HStack {
                Text(room_category)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(width: 107, height: 37)
                    .font(.system(size: 20))
                    .foregroundColor(Color(red: 25/256, green: 37/256, blue: 114/256))
                Spacer()
                Text("Max \(totalPlayers)")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(width: 107, height: 37)
                    .font(.system(size: 20))
                    .foregroundColor(Color(red: 25/256, green: 37/256, blue: 114/256))
            }
            Spacer()
        }
        .frame(width: 293, height: 107)
        .cornerRadius(6)
        .background(Color(red: 255/256, green: 255/256, blue: 255/256))
        .shadow(color: Color(red: 229/256, green: 229/256, blue: 229/256), radius: 20, x: 0, y: 4)
    }
}

struct DetailRuanganJumbotron_Previews: PreviewProvider {
    static var previews: some View {
        DetailRuanganJumbotron()
    }
}
