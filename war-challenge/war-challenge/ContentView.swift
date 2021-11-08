//
//  ContentView.swift
//  war-challenge
//
//  Created by Andrin Schaller on 08.11.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                    
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text("0")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text("0")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
