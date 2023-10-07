//
//  MainView.swift
//  FashionApp
//
//  Created by Ahmed Fathi on 05/10/2023.
//

import SwiftUI

struct MainView: View {
    @State var selected = "Dress"
    var body: some View {
        VStack (spacing: 15){
            HStack{
                HStack{
                    Button {
                    } label: {
                        HStack{
                            Text("Casual Dress")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "chevron.down")
                        }
                        .padding()
                    }
                    .foregroundColor(.black)
                    .background(.white)
                    Button {
                        
                    } label: {
                        Image(systemName: "slider.vertical.3")
                            .foregroundColor(.black)
                            .frame(width: 60, height: 60)
                            .background(.white)
                    }
                }
            }
            HStack{
                ForEach(types, id: \.self) { i in
                    HStack {
                        Button {
                            selected = i
                        } label: {
                            Text(i)
                                .padding()
                                
                        }
                        .foregroundColor(selected == i ? .white : .black)
                        .background(selected == i ? .black : .clear)
                        .cornerRadius(10)

                    }
                    
                }
            }
            DetailScroll()
        }
        .padding()
    }
}


