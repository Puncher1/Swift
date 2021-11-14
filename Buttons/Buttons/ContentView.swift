//
//  ContentView.swift
//  Buttons
//
//  Created by Andrin Schaller on 14.11.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        VStack {
            
            // Button instance with closure
            Button("Click me", action: {
                print("Hello World!")
                
            })
            
            // Button instance with trailing closure
            Button("Click me"){
                print("Hello World!")
            }
            
            // Button instance with label view
            Button(action: {
                print("Bye World!")
                
            }, label: {
                HStack{
                    Image(systemName: "message.circle.fill")
                        .tint(Color.green)
                        .font(.largeTitle)
                    Text("Edit")
                }
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
