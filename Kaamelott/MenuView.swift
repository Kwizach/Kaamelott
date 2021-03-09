//
//  MenuView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 23/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "tag.circle").font(.system(size: 50))
            Spacer()
            Image(systemName: "person.circle").font(.system(size: 50))
            Spacer()
            Image(systemName: "bookmark").font(.system(size: 45))
            Spacer()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
