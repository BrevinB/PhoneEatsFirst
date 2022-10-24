//
//  ContentView.swift
//  PhoneEatsFirst
//
//  Created by Brevin Blalock on 9/13/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var search = ""
    @State private var showReview = false
    var body: some View {
        ZStack {
            MapView()
            
            VStack {
                TextField("Search", text: $search) {
                    //when enter key pressed:
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .offset(y: 44)
                
                Spacer()
                
                Button(action: {
                    showReview.toggle()
                }, label: {
                    Image(systemName: "pin.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                })
                .sheet(isPresented: $showReview) {
                    RestaurantView()
                }
                
                Spacer()
            }
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
