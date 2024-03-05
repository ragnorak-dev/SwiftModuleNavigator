//
//  FeatureTwoView.swift
//  FeatureTwo
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI
import Navigator

struct FeatureTwoView: View {
    
    var numberFromOne:Int?
    
    init(numberFromOne: Int? = nil) {
        self.numberFromOne = numberFromOne
    }
    
    var body: some View {
        VStack {
            Text("Hello, World! This is the Feature Two").padding()
            
            Text("Number from One Feature: \(String(numberFromOne ?? 0))")
            
            Button(action: { Navigator.getInstance().finishFlow() }) {
                Text("finish")
            }
                .padding()
            
        }.padding()
    }
}

struct FeatureTwoView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTwoView()
    }
}
