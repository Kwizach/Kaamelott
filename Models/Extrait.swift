//
//  Extrait.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 23/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI
import CoreLocation
import AVFoundation

struct Extrait: Hashable, Codable {
    var character: String
    var episode: String
    var title: String
    var file: String
    var tag: String
}

extension Extrait {
    var image: Image {
        ImageStore.shared.image(name: character)
    }
}

struct Character: Hashable {
    var character: String
}
extension Character {
    var image: Image {
        ImageStore.shared.image(name: character)
    }
}

struct Tag: Hashable {
    var name: String
}
