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
    
    let greetsNavigate:[Any] = ["Hello unknow navigate view! I'm contentView, and the number is:", 12344]
    let greetsLocal:[Any] = ["Hello unknow embedded view! I'm contentView, and the number is:", 660002]
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world! This is the ContentView")
                
                Navigator.navigator.navigationTo(viewId: ViewIdentifiers.FEATURE_ONE, params: greetsLocal)
                
                NavigationLink {
                    // destination view to navigation to
                    Navigator.navigator.navigationTo(viewId: ViewIdentifiers.FEATURE_ONE, params: greetsNavigate)
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
