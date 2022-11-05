//
//  CardsGeneratorApp.swift
//  Shared
//
//  Created by Atika Haryouli on 04/11/2022.
//

import SwiftUI

@main
struct CardsGeneratorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(picture: "picnic", changeImage: pictures[4])
        }
    }
}
