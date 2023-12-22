//
//  RotatePaintingView.swift
//  ArtGalleryScene
//
//  Created by Sofo Machurishvili on 22.12.23.
//

import SwiftUI

struct RotatePaintingView: View {
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        Image("painting6")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 500)
            .clipped()
            .cornerRadius(12)
            .shadow(color: Color(red: 0.42, green: 0.53, blue: 0.63).opacity(0.55), radius: 7.5, x: 0, y: 10
            )
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged {value in
                        angle = value
                    }
                    .onEnded {value in
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0)
                        }
                    }
            )
    }
}

#Preview {
    RotatePaintingView()
}
