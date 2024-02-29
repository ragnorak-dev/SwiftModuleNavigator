//
//  SwiftModuleNavigatorApp.swift
//  SwiftModuleNavigator
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI
import FeatureOne
import FeatureTwo
import Navigator

@main
struct SwiftModuleNavigatorApp: App {
    var navigator: Navigator = Navigator()
    
    init() {
        navigator.featureOneloadViews()
        navigator.featureTwoloadViews()
    }
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
                .environmentObject(navigator)
        }
    }
}
