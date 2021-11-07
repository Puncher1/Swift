//
//  ContentView.swift
//  AppTesting
//
//  Created by Puncher1 on 07.11.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!").padding().background(Color.green).clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/9.0/*@END_MENU_TOKEN@*/))
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
