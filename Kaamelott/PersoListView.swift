//
//  PersoListView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 23/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI

struct PersoListView: View {
    var body: some View {
        NavigationView {
            List(uniqCharacters, id: \.self) { perso in
                NavigationLink(
                    destination: ExtraitListView(
                        listExtrait: extraitData.filter {
                            $0.character == perso.character
                        },
                        titleStr: perso.character
                    )
                ) {
                    HStack {
                        perso.image
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .center)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 10)
                        Text(perso.character)
                    }
                }
            }
            .navigationBarTitle(Text("Personnages"))
        }
    }
}

struct PersoListView_Previews: PreviewProvider {
    static var previews: some View {
        PersoListView()
    }
}
