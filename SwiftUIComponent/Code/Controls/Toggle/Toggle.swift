//
//  Toggle.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/7/22.
//

import SwiftUI

struct EmailList: Identifiable {
    var id: String
    var isSubscribed = false
}

struct Toggle_View: View {
    @State var lists = [
        EmailList(id: "Monthly Updates", isSubscribed: true),
        EmailList(id: "News Flashes", isSubscribed: true),
        EmailList(id: "Special Offers", isSubscribed: true)
    ]
    @State private var vibrateOnRing = true
    @State private var vibrateOnSilent = true

    @State var isSoundOn: Bool = true

    
    var body: some View {
        Form {
            Section {
                ForEach($lists) { $list in
                    Toggle(list.id, isOn: $list.isSubscribed)
                }
            }

            VStack {
                Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
                Toggle("Vibrate on Silent", isOn: $vibrateOnSilent)
            }
            .toggleStyle(.switch)
            
            
            VStack {
                        Text("Toggle Sound")
                            .foregroundColor(isSoundOn ? .green : .gray)
                        Toggle("Sound", isOn: $isSoundOn)
                            .labelsHidden()
                    }.padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 2)
                            .foregroundColor(isSoundOn ? .green : .gray)
                    )
            
           
        }
    }
}

struct Toggle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle_View()
    }
}
