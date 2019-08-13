//
//  PriceRow.swift
//  SwiftUI-Sandbox
//
//  Created by Erik Bye on 8/12/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//

import SwiftUI

struct PriceRow: View {
    var app: App
    fileprivate var selectedPrice: Price {
        app.prices.first { (price) -> Bool in
            price.id == app.selectedPriceID
            } ?? app.prices.first!
    }
    var body: some View {
        HStack {
            Image(systemName:"checkmark.square.fill").foregroundColor(Color.blue)
            Text(app.name)
            Spacer()
            Button(action: {
                
            }) {
                Image(systemName: "arrow.left.circle")
                .foregroundColor(Color.blue)
            }
            VStack (alignment: .trailing) {
                Text(selectedPrice.description).font(.subheadline)
                Text(String(format:"%.1f", selectedPrice.price)).font(.title)
            }.frame(width: 150)
            Button(action: {

            }) {
                Image(systemName: "arrow.right.circle")
                .foregroundColor(Color.blue)
            }
        }
    }
}

#if DEBUG
struct PriceRow_Previews: PreviewProvider {
    static var previews: some View {
        PriceRow(app:appData[0])
    }
}
#endif
