//
//  DetailView.swift
//  FashionApp
//
//  Created by Ahmed Fathi on 06/10/2023.
//

import SwiftUI

struct DetailView: View {
    @Binding var show : Bool
    @State var size = ""
    var body: some View {
        NavigationStack {
                Image("1")
                   .resizable()
            VStack( alignment: .leading, spacing:15){
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Fit and Flare")
                            .font(.largeTitle)
                        Text("$199.99")
                            .fontWeight(.heavy)
                    }
                    .padding()
                    Spacer()
                    HStack (spacing: 10){
                        Circle().fill(.green).frame(width: 20,height: 20)
                        Circle().fill(.blue).frame(width: 20,height: 20)
                        Circle().fill(.red).frame(width: 20,height: 20)
                    }
                    .padding()
                }
                Text("Fitted top made from a polymade blend. Features wide straps and chest reinforcement.")
                Text("Select Size")
                   
                
                HStack  {
                    ForEach(sizes , id: \.self) {  i in
                        Button {
                            self.size = i
                        } label: {
                            Text(i)
                                .padding()
                                .border(.black, width: size == i ? 1.5 : 0)
                        }
                        .foregroundColor(.black)
                    }
                }
                HStack {
                    Button {
                        
                    } label: {
                        Text("Add To Cart")
                            .padding()
                            .border(.black, width: 1.4)
                            
                    }
                    .foregroundColor(.black)
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Buy Now")
                            .padding()
                            .frame(width: 140, height: 50)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(10)
                    }
//                    .foregroundColor(.white)
//                    .background(.black)
                }
                .padding([.leading , .trailing] , 15)
                .padding(.top , 15)
                
            }
            .padding()
            .background(rounded().fill(.white))
            .padding(.top , -50)
               
            
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "bag")
                    }
                }
            }
        }
    }
}

struct rounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft , .topRight], cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}


