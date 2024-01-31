//
//  File.swift
//  
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI

public class SwiftUIViewModule : NavigationViewModule {
    
    public var viewMethod: ([Any]?) -> any View
    
    public init(view: @escaping ([Any]?) -> any View) {
        viewMethod = view
    }
    
    public func releaseView(params: [Any]?) -> some View{
        return AnyView(viewMethod(params))
    }
}
