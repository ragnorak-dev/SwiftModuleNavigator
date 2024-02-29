//
//  FeatureOneLoaderViews.swift
//  FeatureOne
//
//  Created by Raul Illan on 31/1/24.
//

import Navigator
import ViewIdentifiers

public extension Navigator {
    
    func featureOneloadViews() {
        addView(id: FeatureOneDestination.viewOne, view: SwiftUIViewModule {
            params in FeatureOneView(greet: params?[0] as? String ?? "", number: params?[1] as? Int ?? 0)
        })
    }
}
