//
//  ContentView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 22/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI
import AVKit


struct ContentView: View {
    
    @State var selected = 0
    
    var body: some View {
        TabView(selection: $selected) {
            ExtraitListView(listExtrait: extraitData, titleStr: "").tabItem({
                Image(systemName: "text.bubble")
                    .font(.title)
                Text("All")
            }).tag(0)
            PersoListView().tabItem({
                Image(systemName: "person.circle")
                    .font(.title)
                Text("Persos")
            }).tag(1)
            TagListView().tabItem({
                Image(systemName: "tag.circle")
                    .font(.title)
                Text("Tags")
            }).tag(2)
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
