//
//  BlueTitleTextLabel.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct BlueTitleTextLabel: View {
    var textLabel: String = "Label"
    var body: some View {
        Text(textLabel)
            .fontWeight(.bold)
            .font(.system(size : 20))
            .foregroundColor(Color(red: 7/256, green: 8/256, blue: 73/256))
            .frame(width: 348)
    }
}

struct BlueTitleTextLabel_Previews: PreviewProvider {
    static var previews: some View {
        BlueTitleTextLabel()
    }
}
