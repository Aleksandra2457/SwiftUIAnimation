//
//  ButtonView.swift
//  SwiftUIAnimation
//
//  Created by Александра Лесовская on 31.05.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text("Feel the thunder!")
                .frame(width: 300, height: 60)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .background(Color.gray)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
                .cornerRadius(10)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {})
    }
}
