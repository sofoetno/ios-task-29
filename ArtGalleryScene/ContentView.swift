//
//  ContentView.swift
//  ArtGalleryScene
//
//  Created by Sofo Machurishvili on 22.12.23.
//

import SwiftUI

struct ContentView: View {
    @State var offsetOne: CGSize = .zero
    @State var offsetTwo: CGSize = .zero
    @State var offsetThree: CGSize = .zero
    @State var isSaved: Bool = false
    @State var isLiked: Bool = false
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                        Text("Illustrations")
                            .font(
                                Font.custom("TT Norms", size: 34)
                                    .weight(.bold)
                            )
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        
                            .frame(width: 328, height: 40, alignment: .topLeading)
                        
                        Text("CURATED GALLERIES")
                            .font(Font.custom("Gilroy-Bold", size: 14))
                            .kerning(2.52)
                            .foregroundColor(Color(red: 0.41, green: 0.41, blue: 0.41))
                        
                            .frame(width: 328, height: 31, alignment: .topLeading)
                        
                    }
                    
                    HStack {
                        Image("painting1")
                            .resizable()
                            .frame(width: 109, height: 72)
                            .background(
                                Image("painting1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 109, height: 72)
                                    .clipped()
                            )
                            .cornerRadius(8)
                            .shadow(color: Color(red: 0.22, green: 0.47, blue: 0.48).opacity(0.47), radius: 5, x: 0, y: 5)
                        
                            .offset(offsetOne)
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        withAnimation(.spring()) {
                                            offsetOne = value.translation
                                        }
                                    }
                                    .onEnded{ value in
                                        withAnimation(.spring()) {
                                            offsetOne = value.translation
                                        }
                                    }
                            )
                        
                        
                        Image("painting2")
                            .resizable()
                            .frame(width: 109, height: 72)
                            .background(
                                Image("painting2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 109, height: 72)
                                    .clipped()
                            )
                            .cornerRadius(8)
                            .shadow(color: Color(red: 0.22, green: 0.47, blue: 0.48).opacity(0.47), radius: 5, x: 0, y: 5)
                        
                            .offset(offsetTwo)
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        withAnimation(.spring()) {
                                            offsetTwo = value.translation
                                        }
                                    }
                                    .onEnded{ value in
                                        withAnimation(.spring()) {
                                            offsetTwo = value.translation
                                        }
                                    }
                            )
                        
                        Image("painting3")
                            .resizable()
                            .frame(width: 109, height: 72)
                            .background(
                                Image("painting3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 109, height: 72)
                                    .clipped()
                            )
                            .cornerRadius(8)
                            .shadow(color: Color(red: 0.22, green: 0.47, blue: 0.48).opacity(0.47), radius: 5, x: 0, y: 5
                            )
                            .offset(offsetThree)
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        withAnimation(.spring()) {
                                            offsetThree = value.translation
                                        }
                                    }
                                    .onEnded{ value in
                                        withAnimation(.spring()) {
                                            offsetThree = value.translation
                                        }
                                    }
                            )
                    }
                    .padding()
                    
                    NavigationLink  {
                        PaintingView()
                    } label: {
                        HStack {
                            Image("painting4")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 343, height: 210)
                                .clipped()
                                .cornerRadius(16)
                                .shadow(color: Color(red: 0.19, green: 0.34, blue: 0.36).opacity(0.38), radius: 7.5, x: 0, y: 10
                                )
                        }
                    }
                    .padding()
                    
                    HStack {
                        VStack {
                            
                            ZStack {
                                Image("painting5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 162, height: 162)
                                    .clipped()
                                    .background(
                                        Image("painting5")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 162, height: 162)
                                            .clipped()
                                    )
                                    .cornerRadius(12)
                                    .shadow(color: Color(red: 0.76, green: 0.73, blue: 0.69).opacity(0.63), radius: 7.5, x: 0, y: 10)
                                
                                Text(isSaved ? "Saved" : "Save")
                                    .frame(width: 100, height: 30)
                                    .font(.title2)
                                    .background(.white)
                                    .cornerRadius(14)
                                    .onLongPressGesture(minimumDuration: 1.0) {
                                        isSaved.toggle()
                                    }
                                    .offset(x: 0, y: 38)
                            }
                            .padding()
                            
                            ZStack {
                                Image("painting7")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 162, height: 162)
                                    .clipped()
                                    .cornerRadius(12)
                                    .shadow(color: Color(red: 0.19, green: 0.34, blue: 0.36).opacity(0.38), radius: 7.5, x: 0, y: 10)
                                
                                
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                                    .foregroundColor(isLiked ? .blue : .white)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .offset(x: -46, y: -60)
                            }
                            
                            .onTapGesture {
                                isLiked.toggle()
                            }
                            
                        }
                        
                        NavigationLink {
                            RotatePaintingView()
                        } label: {
                            Image("painting6")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 162, height: 352)
                                .clipped()
                                .cornerRadius(12)
                                .shadow(color: Color(red: 0.42, green: 0.53, blue: 0.63).opacity(0.55), radius: 7.5, x: 0, y: 10)
                        }
                        
                        
                    }
                    
                    Spacer()
                    
                }
                .offset(x: 0, y: 50)
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
