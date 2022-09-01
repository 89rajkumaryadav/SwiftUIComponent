//
//  MainViewBuilder.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 8/30/22.
//



import SwiftUI


struct MainViewBuilder: View {
    var body: some View {
        
        TabView{
            AllList()
                .tabItem {
                    Label("All List", systemImage: "list.bullet")
                   
                }
            
            FavouriteList()
                .tabItem {
                    Label("Favourite", systemImage: "star")
                   
                }
            
            SearchList()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                  
                }
            
             
        }
    }
}

struct MainViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






