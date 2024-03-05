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
    @StateObject private var navigator: Navigator = Navigator.getInstance()

    let greetsNavigate:[Any] = ["Hello unknow navigate view! I'm contentView, and the number is:", 12344]
    let greetsLocal:[Any] = ["Hello unknow embedded view! I'm contentView, and the number is:", 660002]
    
    var body: some View {
        NavigationStack(path: $navigator.navPath) {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world! This is the ContentView")
                
                Navigator.getInstance().deliveryView(viewId: FeatureOneDestination.viewOne, params: greetsLocal)
                
                Button(
                    action: {Navigator.getInstance().navigate(to: FeatureOneDestination.viewOne)},
                    label: {Text("Navigate to Feature One")})
               // NavigationLink("Navigate to Feature One", value: FeatureOneDestination.viewOne).padding()
            }
            .padding()
            
            .navigationDestination(for: FeatureOneDestination.self){ destination in
                Navigator.getInstance().deliveryView(viewId: destination, params: greetsNavigate)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
