//
//  Modern_SoundboardApp.swift
//  Modern Soundboard
//
//  Created by Godefroy Delhay on 22/03/2023.
//

import SwiftUI

@main
struct Modern_SoundboardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(presentSideMenu: .constant(false))
        }
    }
}
