//
//  File.swift
//  
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI

public class Navigator {
    
    public static private(set) var shared: Navigator = Navigator()
    
    var dictionaryViews: [String: NavigationViewModule] = [:]
    
    public init() {
        
    }
    
    public func addView(id: String, view: NavigationViewModule) {
        dictionaryViews[id] = view
    }
    
    public func navigationTo(viewId: String, params: SwiftUIViewParams? = nil) -> some View {
        return (self.dictionaryViews[viewId] as? SwiftUIViewModule)?.releaseView(params: params)
    }
}
