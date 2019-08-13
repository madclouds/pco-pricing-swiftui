//
//  ContentView.swift
//  SwiftUI-Sandbox
//
//  Created by Erik Bye on 8/12/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//

import SwiftUI

struct PricingView: View {

    @State var app0PriceID: Int = 0
    @State var app1AppPriceID: Int = 0
    @State var app2AppPriceID: Int = 0
    @State var app3AppPriceID: Int = 0
    @State var app4AppPriceID: Int = 0
    @State var app5AppPriceID: Int = 0
    @State var app6AppPriceID: Int = 0
    @State var app7AppPriceID: Int = 0

    @State var isToggle = false
    var body: some View {
        List {
            BannerView()
            Toggle(isOn: $isToggle) {
                Text("Toggley")
            }
            HeroView()
            Section(header:
                HStack {
                    Text("APPS & ADD-ONS")
                    Spacer()
                    Text("PRICING")
                },
            footer: Text("A lot to learn")) {
                ForEach(appData) { app in
                    PriceRow(app: app)
                }
            }

        }.listStyle(GroupedListStyle())
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PricingView()
    }
}
#endif
