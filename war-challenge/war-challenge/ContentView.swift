//
//  ContentView.swift
//  war-challenge
//
//  Created by Andrin Schaller on 08.11.21.
//

import SwiftUI

struct ContentView: View {
    
    /*
     @State:
        1. You can change the value in the var
        2. In 'View', every references to '@State' roperties will update
           automatically
     
    private:
        To set the access level. Means those variables are only available
        for 'ContentView'
     
    */
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0

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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                Button(action: {
                    
                    // Generate random number in range (2, 14)
                    let randomPlayerNum = Int.random(in: 2...14)
                    let randomCPUNum = Int.random(in: 2...14)
                    
                    // Update cards
                    playerCard = "card\(randomPlayerNum)"
                    cpuCard = "card\(randomCPUNum)"
                    
                    // Update scores
                    if randomPlayerNum > randomCPUNum{
                        playerScore += 1
                    }
                    else if randomCPUNum > randomPlayerNum{
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 2)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 2)
                        Text(String(cpuScore))
                            .font(.largeTitle)
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
