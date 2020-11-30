//
//  BlueSubmitButton.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct BlueSubmitButton: View {
    var buttonText: String = "Submit"
    
    var body: some View {
        NavigationLink(destination: LobbyView()) {
            Text(buttonText)
                .fontWeight(.regular)
                .font(.system(size: 17))
                .frame(width: 193, height: 52)
                .background(Color(red: 25/256, green: 37/256, blue: 114/256))
                .foregroundColor(Color(red: 255/256, green: 255/256, blue: 255/256))
                .cornerRadius(6)
                .shadow(color: Color(red: 0/256, green: 0/256, blue: 0/256, opacity: 0.25), radius: 4, x: 0, y: 4)
        }
    }
    
}

struct BlueSubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        BlueSubmitButton()
    }
}
