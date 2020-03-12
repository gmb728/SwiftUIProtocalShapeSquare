//
//  ContentView.swift
//  SwiftUIProtocalShapeSquare
//
//  Created by Chang Sophia on 3/11/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         ZStack{
            Image("blue")
             .resizable()
             .edgesIgnoringSafeArea(.all)
            Circle()
             .offset(x:0, y:-200)
             .foregroundColor(Color(.sRGB, red: 255/255, green: 255/255, blue: 15/255))
            .frame(width:300)
            VStack{
            Text("西瓜日記")
                    .fontWeight(.black)
                    .font(.system(size:40))
                    .offset(x:0, y:-260)
                
            Group{
             CubeView(positionX: 0, positionY:-270, width:30)
                 
                
            }
            }
                HStack(alignment: .center, spacing:1){
                 Text("痞")
                     .font(.system(.largeTitle))
                     .fontWeight(.bold)
                     .foregroundColor(.white)
                     .offset(x:150, y:390)
                 Text("客")
                     .font(.system(.largeTitle))
                     .fontWeight(.bold)
                     .foregroundColor(.white)
                     .offset(x:150, y:390)
                     
                ZStack(alignment: .bottom){
                Rectangle()
                .frame(width:42,height:43)
                .foregroundColor(.white)
                .cornerRadius(15)
                .rotationEffect(Angle(degrees: 110))
                                                  
                Path { (path) in
                    path.move(to: CGPoint(x: 160, y: 200))
                    path.addQuadCurve(to: CGPoint(x: 165, y: 210), control: CGPoint(x: 130, y: 240))
                            }
                    .fill(Color(red: 255/255, green:255/255, blue:255/255))
                    .offset(x:7, y:600)
                 Text("邦")
                     .font(.system(.largeTitle))
                     .fontWeight(.bold)
                     .foregroundColor(Color(.sRGB, red:1/255, green: 106/255, blue:198/255))
                 }            }
        }
        
    }
}

struct Cube: Shape {
    func path(in rect:CGRect) -> Path {
        Path { (path) in
            path.move(to: CGPoint(x:rect.width, y:0))
            path.addLine(to: CGPoint(x:rect.width, y: rect.height))
            path.addLine(to: CGPoint(x:rect.width, y: rect.height))
            path.addLine(to: CGPoint(x:rect.width, y: rect.height))
            path.closeSubpath()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

