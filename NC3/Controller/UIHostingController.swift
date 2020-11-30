//
//  UIHostingController.swift
//  NC3
//
//  Created by Sherwin Yang on 16/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import SwiftUI

class HostingController: UIHostingController<AnyView> {

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: AnyView(EmptyView()))
    }
}
