//
//  ContentView.swift
//  SwiftModuleNavigator
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI
import Navigator
import ViewIdentifiers
import ViewParameters

struct ContentView: View {
    
    let greetsNavigate:[Any] = ["Hello unknow navigate view! I'm contentView, and the number is:", 12344]
    let greetsLocal:[Any] = ["Hello unknow embedded view! I'm contentView, and the number is:", 660002]
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world! This is the ContentView")
                
                let FeatureOneParameters = ViewParameters.FEATURE_ONE.self
                
                Navigator.shared.navigationTo(viewId: ViewIdentifiers.FEATURE_ONE, params: [FeatureOneParameters.greet : greetsLocal])
                
                NavigationLink {
                    // destination view to navigation to
                    Navigator.shared.navigationTo(viewId: ViewIdentifiers.FEATURE_ONE, params: [FeatureOneParameters.greet : greetsNavigate])
                } label: {
                    Text("Navigate to Feature One")
                }.padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
