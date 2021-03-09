//
//  TagListView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 24/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI

struct TagListView: View {
    var body: some View {
        NavigationView {
            List(uniqTags, id: \.self) { tag in
                NavigationLink(
                    destination: ExtraitListView(
                        listExtrait: extraitData.filter {
                            $0.tag == tag.name
                        },
                        titleStr: tag.name
                    )
                ) {
                    Text(tag.name)
                }
            }
            .navigationBarTitle(Text("Tags"))
        }
    }
}

struct TagListView_Previews: PreviewProvider {
    static var previews: some View {
        TagListView()
    }
}
