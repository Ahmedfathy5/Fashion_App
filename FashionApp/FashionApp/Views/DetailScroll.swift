//
//  DetailsView.swift
//  FashionApp
//
//  Created by Ahmed Fathi on 05/10/2023.
//

import SwiftUI


        struct DetailScroll: View {
            @State var show = false
            @State private var coulmns : [GridItem] = [GridItem(.flexible() , spacing: 6),
                                                       GridItem(.flexible() , spacing: 6)
            ]
            var body: some View {
                HStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: coulmns) {
                            ForEach(datas) { i in
                                VStack {
                                    ForEach(i.rows) { j in
                                        NavigationLink(destination: DetailView(show: $show)) {
                                            Image(j.image)
                                                .resizable()
                                                .frame(width: UIScreen.main.bounds.width / 2 - 25, height: 240)
                                        }
                                               
                    
                                            HStack {
                                                VStack(alignment: .leading, spacing: 10 ) {
                                                    Text(j.name)
                                                    Text(j.price)
                                                        .fontWeight(.heavy)
                                                }
                                                    Spacer()
                                                HStack {
                                                    Button {
                                                                        
                                                                    } label: {
                                                                        Image(systemName: "ellipsis")
                                                                            .rotationEffect(Angle(degrees: 90))
                                                                            .foregroundColor(.black)
                                                                            .padding(.trailing , 15)
                                                                }
                                                }
                                                
                                            }
                                                    
                                                   
                                    }
                                }
                                        }
                        }
                        
                    }
                }
                        }
                    }
                
            
        
 

