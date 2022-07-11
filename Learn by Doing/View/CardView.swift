//
//  CardView.swift
//  Learn by Doing
//
//  Created by Alex on 11/07/2022.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Properties
    
    var gradient: [Color] = [ Color("Color01"), Color("Color02")]
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            } //: VStack
            .offset(y: -218)
            
            Button {
                
            } label: {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    .accentColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(.title.weight(.medium))
                        .accentColor(.white)
                } //: HStack
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(
                    LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            } //: Button
            .offset(y: 210)

        } //: ZStack
        .frame(width: 335, height: 545)
        .background(
            LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: - Preview

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
