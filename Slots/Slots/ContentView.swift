//
//  ContentView.swift
//  Slots
//
//  Created by Andrin Schaller on 14.11.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var symbol1 = "star"
    @State private var symbol2 = "star"
    @State private var symbol3 = "star"
    
    var body: some View {
        
        VStack{
            
            Text("\nSlots")
                .font(.largeTitle)
            Spacer()
            Text("Credits \(credits)")
                .font(.title3)
                .fontWeight(.regular)
            Spacer()
            HStack{
                Image(symbol1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(symbol2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(symbol3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }
            Spacer()
            Button(action: {
                
                credits -= 25
                
                let symbolsDict = [1: "star", 2: "apple", 3: "cherry"]
                
                let randomNum1 = Int.random(in: 1...3)
                let randomNum2 = Int.random(in: 1...3)
                let randomNum3 = Int.random(in: 1...3)
                
                symbol1 = symbolsDict[randomNum1]!
                symbol2 = symbolsDict[randomNum2]!
                symbol3 = symbolsDict[randomNum3]!
                
                if symbol1 == symbol2 && symbol2 == symbol3{
                    
                    if symbol1 == "star"{
                        credits += 1000
                    }
                    else if symbol1 == "apple"{
                        credits += 500
                    }
                    else if symbol1 == "cherry"{
                        credits += 250
                    }
                    
                }
                
            }, label: {
                Text("Spin")
                    .foregroundColor(Color.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.vertical, 10.0)
                    .padding(.horizontal, 45.0)
                    .background(Color.pink)
                    .cornerRadius(100)
                    
            })
            Spacer()
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
