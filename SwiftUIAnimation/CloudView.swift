//
//  CloudView.swift
//  SwiftUIAnimation
//
//  Created by Александра Лесовская on 30.05.2022.
//

import SwiftUI

struct CloudView: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = width < geometry.size.height ? width : geometry.size.height
            let middle = height / 2
            
            Path { path in
                path.addArc(center: CGPoint(x: height * 0.3, y: height * 0.5),
                            radius: CGFloat(height * 0.1),
                            startAngle: Angle(degrees: 0),
                            endAngle: Angle(degrees: 180),
                            clockwise: true
                )
                path.addArc(center: CGPoint(x: middle, y: height * 0.5),
                            radius: CGFloat(height * 0.2),
                            startAngle: Angle(degrees: 0),
                            endAngle: Angle(degrees: 180),
                            clockwise: true
                )
                path.addArc(center: CGPoint(x: height * 0.65, y: height * 0.5),
                            radius: CGFloat(height * 0.17),
                            startAngle: Angle(degrees: 0),
                            endAngle: Angle(degrees: 180),
                            clockwise: true
                )
                
                path.addLine(to: CGPoint(x: height * 0.2, y: height * 0.5))
                
                path.addArc(
                    center: CGPoint(x: height * 0.2, y: height * 0.6),
                    radius: height * 0.1,
                    startAngle: Angle(degrees: 270),
                    endAngle: Angle(degrees: 90),
                    clockwise: true
                )
                
                path.addLine(to: CGPoint(x: height * 0.825, y: height * 0.7))
                
                path.addArc(
                    center: CGPoint(x: height * 0.825,y: height * 0.6),
                    radius: height * 0.1,
                    startAngle: Angle(degrees: 90),
                    endAngle: Angle(degrees: 270),
                    clockwise: true
                )
                path.closeSubpath()
            }
            .fill(
                LinearGradient(gradient: Gradient(colors: [.gray, .black]),
                               startPoint: UnitPoint(x: middle, y: 0),
                               endPoint: UnitPoint(x: middle, y: 1))
            )
            .shadow(color: .black, radius: 10, x: 3, y: 3)
            .background(Color.gray)
            
            ThunderView()
                .padding(.top, height * 0.5)
        }
    }
}

struct CloudView_Previews: PreviewProvider {
    static var previews: some View {
        CloudView()
            .frame(width: 200, height: 200)
    }
}
