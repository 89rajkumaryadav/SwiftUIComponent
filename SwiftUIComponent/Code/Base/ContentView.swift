//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 8/26/22.
//

import SwiftUI
import UIKit


struct ContentView: View {
    @StateObject var loadData = ModelData()
    var body: some View {
       // MainViewBuilder().environmentObject(loadData)
        
      //  ViewModifireView()
        
      //  ButtonView()
        
      //  TextFieldView()
        
      //   Label_View()
        
    Menu_View()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
