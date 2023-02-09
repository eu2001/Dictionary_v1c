//
//  Dictonary_V1bApp.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

@main
struct Dictonary_V1bApp: App {
    var body: some Scene {
        WindowGroup { HomeView().environmentObject(ContentModel())
        }
    }
}
