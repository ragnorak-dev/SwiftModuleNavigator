//
//  FeatureTwoLoaderViews.swift
//  FeatureTwo
//
//  Created by Raul Illan on 31/1/24.
//

import Navigator
import ViewIdentifiers

public extension Navigator {
    
    func featureTwoloadViews() {
        addView(id: FeatureTwoDestination.viewTwo, view: SwiftUIViewModule {
            params in FeatureTwoView(numberFromOne: params?[0] as? Int ?? 0)
        })
    }
}
