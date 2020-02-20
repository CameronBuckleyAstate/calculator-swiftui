//
//  ContentView.swift
//  calculator-swiftui
//
//  Created by Cameron Buckley on 2/3/20.
//  Copyright © 2020 Cameron Buckley. All rights reserved.
//

import SwiftUI
//Made a comment here
//What my new lines are that were added
struct ContentView: View {
    
    @State private var fieldOne : String = "0"
    @State private var fieldTwo : String = "0"
    @State private var answer : Double = 0.0
    
    var body: some View {
        VStack {
            Group{
                Text("My Calculator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Text("by me")
                Spacer()
                    .frame(height: 100.0)
                TextField("First Value", text: $fieldOne)
                    .padding(.leading, 100.0)
                TextField("Second Value", text: $fieldTwo)
                    .padding(.leading, 100.0)
            }
            Group{
                HStack(spacing: 27.0) {
                    Button(action: {self.addition()}) {
                        Text("+")
                    }
                    Button(action: {}) {
                        Text("-")
                    }
                    Button(action: {}) {
                        Text("x")
                    }
                }
                

            }
            Text("\(answer)")
                .padding(.top, 19.0)
            Spacer()
                .frame(height: 450.0)
//end of groups
        }
    }

    func addition(){
        let num1 = Double(fieldOne)
        let num2 = Double(fieldTwo)
        answer = num1! + num2!
        
        //print("tapped")
    }
}
//end of contentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
