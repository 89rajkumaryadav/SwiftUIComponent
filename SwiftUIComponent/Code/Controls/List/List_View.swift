//
//  List_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/8/22.
//

import SwiftUI

struct List_View: View {
    let positions = [
        Position(id: 1, name: "First"),
        Position(id: 2, name: "Second"),
        Position(id: 3, name: "Third")
    ]
    
    var body: some View {
       VStack {
            List(positions, rowContent: { position in
                Text(position.name)
            }).listStyle(PlainListStyle())
            
            List(positions, rowContent: { position in
                Text(position.name)
            }).listStyle(InsetListStyle())
            
            List(positions, rowContent: { position in
                Text(position.name)
            }).listStyle(GroupedListStyle())
            
            List(positions, rowContent: { position in
                Text(position.name)
            }).listStyle(InsetGroupedListStyle())
            
            List(positions, rowContent: { position in
                Text(position.name)
            }).listStyle(SidebarListStyle())
        }
        .font(.largeTitle) // <1>
        .background(Color.pink)
    }
}


struct Position: Identifiable {
    let id: Int
    let name: String
}


struct List_View_Previews: PreviewProvider {
    static var previews: some View {
        List_View()
    }
}
