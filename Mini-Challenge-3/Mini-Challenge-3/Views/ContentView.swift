//
//  ContentView.swift
//  Mini-Challenge-3
//
//  Created by Jayson Adrian Sunaryo on 08/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var navigateToBenchPressCalculatorView = false
    @State var navigateToSquatCalculatorView = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                Button(action: {
                    navigateToBenchPressCalculatorView = true
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(.green)
                        
                        Text("Bench Press")
                            .foregroundColor(.white)
                            .font(.system(size: 50, weight: .bold))
                    }
                }
                
                Button(action: {
                    navigateToSquatCalculatorView = true
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(.green)
                        
                        Text("Squat")
                            .foregroundColor(.white)
                            .font(.system(size: 50, weight: .bold))
                    }
                }
            }
            .padding()
            .navigationBarTitle("Workout")
        }
        .navigationDestination(isPresented: $navigateToBenchPressCalculatorView){
            BenchPressCalculatorView()
        }
        .navigationDestination(isPresented: $navigateToSquatCalculatorView){
            SquatCalculatorView()
        }
        
    }
}

#Preview {
    ContentView()
}
