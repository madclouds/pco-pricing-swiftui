//
//  HeroView.swift
//  SwiftUI-Sandbox
//
//  Created by Erik Bye on 8/12/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//

import SwiftUI

struct HeroView: View {
    var body: some View {
        VStack (alignment: .center) {
            Text("Plans & Pricing").font(.largeTitle)
            Text("No Contracts. No Setup Feeds.\nCancel Anytime.").foregroundColor(Color.blue)
        }
        .padding(20)
    }
}

#if DEBUG
struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
    }
}
#endif
