//
//  Link_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/7/22.
//

import SwiftUI

struct Link_View: View {
    var body: some View {
        VStack(spacing:30){
            
 //==========================================================================
            Link("Visit Apple", destination: URL(string: "https://www.apple.com")!)
                .font(.title)
                .foregroundColor(.red)
            //=============================================================

            Link(destination: URL(string: "https://www.apple.com")!) {
                Image(systemName: "link.circle.fill")
                    .font(.largeTitle)
            }
            
            //============================================================

            Link(destination: URL(string: "https://www.simpleswiftguide.com")!) {
                VStack {
                    Image(systemName: "paperplane")
                        .font(.largeTitle)
                    Text("Let's go!")
                }
            }
            
            //==================================================================

        }
    }
}

struct Link_View_Previews: PreviewProvider {
    static var previews: some View {
        Link_View()
    }
}
