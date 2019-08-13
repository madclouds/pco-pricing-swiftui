//
//  BannerView.swift
//  SwiftUI-Sandbox
//
//  Created by Erik Bye on 8/12/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        HStack {
            Text("Planning Center")
            Spacer()
            Text("Sign up").padding(.trailing, 20)
            Text("Log in")
        }
        .padding(20).background(Color.blue)
    }
}

#if DEBUG
struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
#endif
