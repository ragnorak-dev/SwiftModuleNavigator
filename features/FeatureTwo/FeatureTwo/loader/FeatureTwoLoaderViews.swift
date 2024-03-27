//
//  FeatureTwoLoaderViews.swift
//  FeatureTwo
//
//  Created by Raul Illan on 31/1/24.
//

import Navigator
import ViewIdentifiers
import ViewParameters

public class FeatureTwoLoeaderViews {
    
    public static func loadViews() {
        Navigator.shared.addView(id: ViewIdentifiers.FEATURE_TWO, view: SwiftUIViewModule {
            params in FeatureTwoView(numberFromOne: params?[ViewParameters.FEATURE_TWO.numberFromOne] as? Int ?? 0)
        })
    }
}
