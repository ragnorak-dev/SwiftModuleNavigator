//
//  ContentView.swift
//  SwiftModuleNavigator
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI
import Navigator
import ViewIdentifiers

struct ContentView: View {
    @EnvironmentObject private var navigator: Navigator
    
    let greetsNavigate:[Any] = ["Hello unknow navigate view! I'm contentView, and the number is:", 12344]
    let greetsLocal:[Any] = ["Hello unknow embedded view! I'm contentView, and the number is:", 660002]
    
    var body: some View {
        NavigationStack(path: $navigator.navPath) {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world! This is the ContentView")
                
               navigator.navigationTo(viewId: FeatureOneDestination.viewOne, params: greetsLocal)
                
                NavigationLink("Navigate to Feature One", value: FeatureOneDestination.viewOne).padding()
            }
            .padding()
            
            .navigationDestination(for: FeatureOneDestination.self){ destination in
                navigator.navigationTo(viewId: destination, params: greetsNavigate)
            }
        }.environmentObject(navigator)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
