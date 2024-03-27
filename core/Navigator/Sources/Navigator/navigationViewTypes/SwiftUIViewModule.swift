//
//  File.swift
//  
//
//  Created by Raul Illan on 31/1/24.
//

import SwiftUI

public typealias SwiftUIViewParams = [String : Any?]
public typealias SwiftUIViewGenerator = (SwiftUIViewParams?) -> any View

public class SwiftUIViewModule : NavigationViewModule {
    
    public var viewMethod: (SwiftUIViewParams?) -> any View
    
    public init(view: @escaping SwiftUIViewGenerator) {
        viewMethod = view
    }
    
    public func releaseView(params: SwiftUIViewParams?) -> some View{
        return AnyView(viewMethod(params))
    }
}
