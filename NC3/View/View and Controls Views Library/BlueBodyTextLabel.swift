//
//  BlueBodyTextLabel.swift
//  NC3
//
//  Created by Sherwin Yang on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct BlueBodyTextLabel: View {
    var textLabel: String = "Label"
    
    var body: some View {
        Text(textLabel)
            .font(.system(size : 14))
            .fontWeight(.semibold)
            .foregroundColor(Color(red: 92/256, green: 100/256, blue: 155/256, opacity: 1.0))
            .multilineTextAlignment(.leading)
    }
}

struct BlueBodyTextLabel_Previews: PreviewProvider {
    static var previews: some View {
        BlueBodyTextLabel()
    }
}
