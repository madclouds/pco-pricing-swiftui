//
//  ContentView.swift
//  SwiftUI-Sandbox
//
//  Created by Erik Bye on 8/12/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//

import SwiftUI

struct PricingView: View {
    @EnvironmentObject var userData: UserData

    @State var isToggle = false
    var body: some View {
        List {
            BannerView()
            HeroView()
            Section(header:
                HStack {
                    Text("APPS & ADD-ONS")
                    Spacer()
                    Text("PRICING")
                },
            footer: Text("A lot to learn")) {
                ForEach(appData) { app in
                    PriceRow(app: app).environmentObject(UserData())
                }
            }

        }.listStyle(GroupedListStyle()).edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PricingView().environmentObject(UserData())
    }
}
#endif
