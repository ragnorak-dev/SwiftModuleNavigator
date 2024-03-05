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
    
    init() {
        Navigator.getInstance().featureOneloadViews()
        Navigator.getInstance().featureTwoloadViews()
    }
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
    }
}
