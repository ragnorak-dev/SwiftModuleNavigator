//
//  FeatureOneView.swift
//  FeatureOne
//
//  Created by Raul Illan on 31/1/24.
//


import SwiftUI
import Navigator
import ViewIdentifiers

public struct FeatureOneView: View {
    
    var externalGreet: String? = nil
    var externalNumber: Int? = nil
    
    public init(greet: String?, number: Int?) {
        externalGreet = greet
        externalNumber = number
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! Feature one").padding()
            
            Text(externalGreet ?? "")
            Text(String(externalNumber ?? 0))
            
            NavigationLink {
                Navigator.shared.navigationTo(viewId: ViewIdentifiers.FEATURE_TWO, params: ["numberFromOne" : externalNumber])
            } label: {
                Text("Navigate to Feature Two")
            }.padding()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(Color.gray)
    }
}
