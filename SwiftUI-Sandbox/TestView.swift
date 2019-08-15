//
//  TestView.swift
//  SwiftUI-Sandbox
//
//  Created by PCO Loaner on 8/13/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            ForEach(0 ..< 5) { item in
                Text("Hello Something else!")
            }
        }
    }
}

#if DEBUG
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
#endif
