//
//  FallingPersoView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 26/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI

struct FallingPersoView: View {
    var body: some View {
        PersoView(perso: uniqCharacters[0])
    }
}

struct FallingPersoView_Previews: PreviewProvider {
    static var previews: some View {
        FallingPersoView()
    }
}
