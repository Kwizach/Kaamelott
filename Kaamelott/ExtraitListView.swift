//
//  SwiftUIView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 23/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI

struct ExtraitListView: View {
    var listExtrait: [Extrait]
    var titleStr: String
    
    var body: some View {
        List(self.listExtrait, id: \.title) { extrait in
            ExtraitRowView(extrait: extrait)
        }
        .navigationBarTitle(Text(titleStr))
    }
}

struct ExtraitListView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraitListView(listExtrait: extraitData, titleStr: "")
    }
}
