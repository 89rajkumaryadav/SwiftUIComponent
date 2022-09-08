//
//  ScrollViewProxy.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/8/22.
//

import SwiftUI

struct ScrollViewProxy: View {
    var body: some View {
        ScrollView {
            ScrollViewReader { proxy  in
                Button("Jump to #32") {
                    //How do you programmatically scroll a SwiftUI list to a specific item?
                    

                    proxy.scrollTo(70)
                }

                ForEach(1..<101) { number in
                    Text("Item #\(number)")
                        .id(number)
                }
            }
        }
    }
}

struct ScrollViewProxy_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewProxy()
    }
}
