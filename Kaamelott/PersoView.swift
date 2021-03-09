//
//  PersoView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 26/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI

struct PersoView: View {
    var perso: Character
    
    var body: some View {
        perso.image
            .resizable()
            .frame(width: 80, height: 80, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct PersoView_Previews: PreviewProvider {
    static var previews: some View {
        PersoView(perso: uniqCharacters[0])
    }
}
