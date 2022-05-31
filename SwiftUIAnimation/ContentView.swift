//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Александра Лесовская on 30.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                    Rectangle()
                    .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height * 0.5)
                        .overlay(CloudView())
                        .scaleEffect(isAnimated ? 1 : 0)
                    .animation(.easeIn, value: isAnimated)
                Spacer()
                ButtonView {
                    isAnimated.toggle()
                    if isAnimated {
                        SoundManager.shared.playSound()
                    }
                }
            }
            .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


