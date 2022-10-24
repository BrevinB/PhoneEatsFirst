//
//  RestaurantView.swift
//  PhoneEatsFirst
//
//  Created by Brevin Blalock on 9/13/22.
//

import SwiftUI

struct RestaurantView: View {
    var body: some View {
        VStack {
            Text("Restaurant Name")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            ScrollView {
                ForEach(1..<4) { _ in
                    Review()
                }
            }
               
                
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
