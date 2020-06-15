//
//  HeaderImage.swift
//  NC3
//
//  Created by Sherwin Yang on 11/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

struct HeaderImage: View {
    var body: some View {
        HStack {
            Image("header_1")
                .edgesIgnoringSafeArea(.top)
            Spacer()
        }
    }
}

struct HeaderImage_Previews: PreviewProvider {
    static var previews: some View {
        HeaderImage()
    }
}
