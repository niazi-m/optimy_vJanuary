//
//  ViewController.swift
//  TestApp
//
//  Created by park Jeong Ho on 12/25/23.
//

import SwiftUI
import CoreMotion

import SwiftUI

struct ViewController: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        Circle()
            .stroke(Color.black, lineWidth: 3)
            .background(Circle().fill(Color.white))
            .scaleEffect(scale)
            .frame(width: 100, height: 100)
            .onAppear {
                withAnimation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true)) {
                    scale = 1.2
                }
            }
            .background(Color.white)
    }
}

struct VibratingCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ViewController()
    }
}

#Preview {
    ViewController()
    
}

