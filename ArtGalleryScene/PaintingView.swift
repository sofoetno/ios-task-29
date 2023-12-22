//
//  PaintingView.swift
//  ArtGalleryScene
//
//  Created by Sofo Machurishvili on 22.12.23.
//

import SwiftUI

struct PaintingView: View {
    @State var currentAmmount: CGFloat = 0
    
    
    var body: some View {
        VStack {
            Image("painting4")
                .resizable()
                .scaledToFit()
                .scaleEffect(currentAmmount + 1)
                .gesture(
                    MagnificationGesture()
                        .onChanged{ value in
                            currentAmmount = value - 1
                        }
                        .onEnded{ value in
                            withAnimation(.spring()) {
                                currentAmmount = 0
                            }
                        }
                )
        }
    }
}

#Preview {
    PaintingView()
}
