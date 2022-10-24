//
//  Reviews.swift
//  PhoneEatsFirst
//
//  Created by Brevin Blalock on 9/13/22.
//

import SwiftUI

struct Review: View {
    
    @State private var rating = 3
    
    var body: some View {
        VStack {
            VStack(spacing: 16) {
                HStack() {
                    Image(systemName: "b.circle")
                        .font(.largeTitle)
                    VStack(alignment: .leading) {
                        Text("Brevin Blalock")
                        Text(Date.now.formatted(date: .numeric, time: .shortened))
                    }
                    Spacer()
                    Text("...")
                    
                }
                Image("Burger")
                    .resizable()
                    .frame(width: 300, height: 200)
                    .scaledToFit()
                    .clipShape(Capsule())
                
                RatingView(rating: $rating)
                
                Text("This burger from restaruant is one of the best burgers I have ever had")
                
                Collapsible(label: {Text("More Info")}, content: {
                    Form {
                        Section("Menu Item") {
                            Text("Smash Burger")
                        }
                        Section("Price") {
                            Text("$10.99")
                        }
                    }
                })
            }
            
            
       
        
        }
        .padding()
        
    }
}

struct Review_Previews: PreviewProvider {
    static var previews: some View {
        Review()
    }
}
