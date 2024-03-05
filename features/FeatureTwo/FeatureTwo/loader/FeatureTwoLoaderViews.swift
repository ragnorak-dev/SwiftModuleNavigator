//
//  FeatureTwoLoaderViews.swift
//  FeatureTwo
//
//  Created by Raul Illan on 31/1/24.
//

import Navigator
import ViewIdentifiers

public class FeatureTwoLoeaderViews {
    
    public static func loadViews() {
        Navigator.shared.addView(id: ViewIdentifiers.FEATURE_TWO, view: SwiftUIViewModule {
            params in FeatureTwoView(numberFromOne: params?[0] as? Int ?? 0)
        })
    }
}
