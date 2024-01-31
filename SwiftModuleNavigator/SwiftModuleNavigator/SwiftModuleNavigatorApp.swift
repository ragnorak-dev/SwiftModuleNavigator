//
//  SwiftModuleNavigatorApp.swift
//  SwiftModuleNavigator
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI
import FeatureOne
import FeatureTwo

@main
struct SwiftModuleNavigatorApp: App {
    init() {
        FeatureOneLoeaderViews.loadViews()
        FeatureTwoLoeaderViews.loadViews()
    }
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
    }
}
