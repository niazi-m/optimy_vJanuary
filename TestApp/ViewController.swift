import SwiftUI

struct ViewController: View {
    @State private var scale: CGFloat = 1.0
    @State private var isAnimating = false

    let backgroundColor = Color(hex: "005CBB")
    let accentColor = Color(hex: "FED600")
    let buttonBackgroundColor = Color.white.opacity(0.8)

    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all) // This will ensure the background color fills the entire screen.
            

            VStack {
                Spacer()

                Text("Otter")
                    .font(.custom("DancingScript-Bold", size: 64))
                    .foregroundColor(accentColor)
                    .padding(.top) // Add padding to match the top of the layout if needed.
                Spacer()
                
                ZStack {
                    Circle()
                        .stroke(accentColor, lineWidth: 3)
                        .background(Circle().fill(Color.clear)) // Transparent background for the circle
                        .scaleEffect(isAnimating ? 1.2 : 1.0)
                        .frame(width: 100, height: 100)
                        .animation(Animation.easeInOut(duration: 0.3).repeatForever(autoreverses: true), value: isAnimating)

                    Button(action: {
                        isAnimating.toggle()
                    }) {
                        Text("SPEAK")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(accentColor)
                    }
                }
                
                Spacer()


                Button("SIGN UP") {
                    // Action for Get Started button
                }
                .padding()
                .background(buttonBackgroundColor) // 80% opacity white background
                .foregroundColor(.black) // Black font color
                .cornerRadius(10)
                Spacer()
            }
        }
    }
}

struct VibratingCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ViewController()
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xff0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00ff00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000ff) / 255.0
        self.init(red: r, green: g, blue: b, opacity: 1.0)
    }
}
