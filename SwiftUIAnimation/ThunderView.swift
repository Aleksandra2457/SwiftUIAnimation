//
//  ThunderView.swift
//  SwiftUIAnimation
//
//  Created by Александра Лесовская on 31.05.2022.
//

import SwiftUI

struct ThunderView: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.35, y: height * 0.1))
                path.addLine(to: CGPoint(x: width * 0.2, y: height * 0.6))
                path.addLine(to: CGPoint(x: width * 0.4, y: height * 0.6))
                path.addLine(to: CGPoint(x: width * 0.3, y: height * 0.9))
            }
            .stroke(Color.orange, lineWidth: 6)
            .shadow(color: .orange, radius: 5, x: 2, y: 2)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.6, y: height * 0.3))
                path.addLine(to: CGPoint(x: width * 0.5, y: height * 0.6))
                path.addLine(to: CGPoint(x: width * 0.6, y: height * 0.6))
                path.addLine(to: CGPoint(x: width * 0.5, y: height * 0.9))
            }
            .stroke(Color.orange, lineWidth: 6)
            .shadow(color: .orange, radius: 5, x: 2, y: 2)
        }
    }
}

struct ThunderView_Previews: PreviewProvider {
    static var previews: some View {
        ThunderView()
            .frame(width: 100, height: 100)
    }
}
