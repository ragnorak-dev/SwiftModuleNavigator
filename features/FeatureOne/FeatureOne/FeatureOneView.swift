//
//  FeatureOneView.swift
//  FeatureOne
//
//  Created by Raul Illan on 31/1/24.
//


import SwiftUI
import Navigator
import ViewIdentifiers

public struct FeatureOneView: View {
    
    var externalGreet: String? = nil
    var externalNumber: Int? = nil
    
    public init(greet: String?, number: Int?) {
        externalGreet = greet
        externalNumber = number
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! Feature one").padding()
            
            Text(externalGreet ?? "")
            Text(String(externalNumber ?? 0))
            
            NavigationLink(value: FeatureTwoDestination.viewTwo){
                Text("Navigate to Feature Two".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
                .padding()
                .navigationDestination(for: FeatureTwoDestination.self) { destination in
                    Navigator.getInstance().deliveryView(viewId: destination, params: [externalNumber as Any])
                }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(Color.gray)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        Navigator.getInstance().navigateBack()
                    } label: {
                        Text("back")
                    }
                }
            }
    }
}
