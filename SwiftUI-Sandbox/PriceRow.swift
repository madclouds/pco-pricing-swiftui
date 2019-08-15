//
//  PriceRow.swift
//  SwiftUI-Sandbox
//
//  Created by Erik Bye on 8/12/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//

import SwiftUI

struct PriceRow: View {
    @EnvironmentObject var userData: UserData
    var app: App
    fileprivate var selectedPrice: Price {
        app.prices.first { (price) -> Bool in
            price.id == self.indexForAppId(self.app.id)
            } ?? app.prices.first!
    }
    var body: some View {
        HStack {
            Image(systemName:"checkmark.square.fill").foregroundColor(Color.blue)
            Text(app.name)
            Spacer()
            Button(action: {
                self.decreasePriceIndex(self.app.id)
            }) {
                Image(systemName: "arrow.left.circle")
                .foregroundColor(Color.blue)
            }
            VStack (alignment: .trailing) {
                Text(selectedPrice.description).font(.subheadline)
                Text(String(format:"%.1f", selectedPrice.price)).font(.title)
            }.frame(width: 180)
            Button(action: {
                self.increasePriceIndex(self.app.id)
            }) {
                Image(systemName: "arrow.right.circle")
                .foregroundColor(Color.blue)
            }
        }
    }
    
    func increasePriceIndex(_ index: Int) {
        switch index {
        case 0:
            if self.canIncreaseIndex(index) {
                userData.checkinsIndex+=1
            }
        case 1:
            if self.canIncreaseIndex(index) {
                userData.givingIndex+=1
            }
        case 2:
            if self.canIncreaseIndex(index) {
                userData.groupsIndex+=1
            }
        case 3:
            if self.canIncreaseIndex(index) {
                userData.registrationIndex+=1
            }
        case 4:
            if self.canIncreaseIndex(index) {
                userData.resourcesIndex+=1
            }
        case 5:
            if self.canIncreaseIndex(index) {
                userData.servicesIndex+=1
            }
        default:
            //no op
            break
        }
    }
    
    func decreasePriceIndex(_ index: Int) {
        switch index {
        case 0:
            if self.canDecreaseIndex(index) {
                userData.checkinsIndex-=1
            }
        case 1:
            if self.canDecreaseIndex(index) {
                userData.givingIndex-=1
            }
        case 2:
            if self.canDecreaseIndex(index) {
                userData.groupsIndex-=1
            }
        case 3:
            if self.canDecreaseIndex(index) {
                userData.registrationIndex-=1
            }
        case 4:
            if self.canDecreaseIndex(index) {
                userData.resourcesIndex-=1
            }
        case 5:
            if self.canDecreaseIndex(index) {
                userData.servicesIndex-=1
            }
        default:
            //no op
            break
        }
    }
    
    func canDecreaseIndex(_ index: Int) -> Bool {
        return indexForAppId(index) > 0
    }
    
    func canIncreaseIndex(_ index: Int) -> Bool {
        return appData[index].prices.count-1 > indexForAppId(index)
    }
    
    func indexForAppId(_ appID: Int) -> Int {
        switch appID {
        case 0:
            return userData.checkinsIndex
        case 1:
            return userData.givingIndex
        case 2:
            return userData.groupsIndex
        case 3:
            return userData.registrationIndex
        case 4:
            return userData.resourcesIndex
        case 5:
            return userData.servicesIndex
        default:
            //no op
            return 0
        }
    }
}

#if DEBUG
struct PriceRow_Previews: PreviewProvider {
    static var previews: some View {
        PriceRow(app:appData[0]).environmentObject(UserData())
    }
}
#endif
