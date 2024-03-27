//
//  FeatureOneLoaderViews.swift
//  FeatureOne
//
//  Created by Raul Illan on 31/1/24.
//

import Navigator
import ViewIdentifiers

public class FeatureOneLoeaderViews {
    
    public static func loadViews() {
        Navigator.shared.addView(id: ViewIdentifiers.FEATURE_ONE, view: SwiftUIViewModule {
            params in FeatureOneView(greet: params?["greet"] as? String ?? "", number: params?["number"] as? Int ?? 0)
        })
    }
}
