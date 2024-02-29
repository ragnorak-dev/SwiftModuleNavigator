//
//  File.swift
//  
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI

@available(iOS 16.0, *)
public final class Navigator: ObservableObject {
    
    /* public static private(set) var navigator: Navigator = Navigator()
    
    public static func getInstance() -> Navigator {
        return navigator
    }
    */
    var dictionaryViews: [AnyHashable: NavigationViewModule] = [:]
    
    @Published public var navPath: NavigationPath
    
    public init() {
        navPath = NavigationPath()
    }
    
    public func addView(id: AnyHashable, view: NavigationViewModule) {
        dictionaryViews[id] = view
    }
    
    public func navigationTo(viewId: AnyHashable, params: [Any]? = nil) -> some View {
        return (self.dictionaryViews[viewId] as? SwiftUIViewModule)?.releaseView(params: params)
    }
    
    public func finishFlow() {
        navPath.removeLast(navPath.count)
    }
    
    public func navigateBack() {
        if navPath.count > 0 {
            navPath.removeLast()
        }
    }
}
