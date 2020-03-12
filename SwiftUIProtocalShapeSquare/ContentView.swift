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
            
            Text("西瓜日記")
                    .fontWeight(.black)
                    .font(.system(size:40))
                    .offset(x:0, y:-280)
               
            Group{
             CubeGreenView(positionX: -130, positionY:-220, width:20, height:20)
             CubeGreenView(positionX: -130, positionY:-200, width:20, height:20)
             CubeGreenView(positionX: -130, positionY:-180, width:20, height:20)
             CubeGreenView(positionX: -130, positionY:-160, width:20, height:20)
            CubeGreenView(positionX: -110, positionY:-160, width:20, height:20)
            CubeGreenView(positionX: -110, positionY:-140, width:20, height:20)
            CubeGreenView(positionX: -90, positionY:-140, width:20, height:20)
            CubeGreenView(positionX: -90, positionY:-120, width:20, height:20)
            CubeGreenView(positionX: -70, positionY:-120, width:20, height:20)
             CubeGreenView(positionX: -70, positionY:-100, width:20, height:20)
               
            }
            
            Group{
             CubeGreenView(positionX: -50, positionY:-100, width:20, height:20)
             CubeGreenView(positionX: -30, positionY:-100, width:20, height:20)
            CubeGreenView(positionX: -10, positionY:-100, width:20, height:20)
            CubeGreenView(positionX: 10, positionY:-100, width:20, height:20)
            CubeGreenView(positionX: 30, positionY:-100, width:20, height:20)
            CubeGreenView(positionX: 50, positionY:-100, width:20, height:20)
            CubeGreenView(positionX: 70, positionY:-100, width:20, height:20)
            }
            Group{
                CubeGreenView(positionX: 70, positionY:-120, width:20, height:20)
                 CubeGreenView(positionX: 90, positionY:-120, width:20, height:20)
                CubeGreenView(positionX: 90, positionY:-140, width:20, height:20)
                 CubeGreenView(positionX: 110, positionY:-140, width:20, height:20)
                CubeGreenView(positionX: 110, positionY:-160, width:20, height:20)
                CubeGreenView(positionX: 130, positionY:-160, width:20, height:20)
                CubeGreenView(positionX: 130, positionY:-180, width:20, height:20)
                CubeGreenView(positionX: 130, positionY:-200, width:20, height:20)
                CubeGreenView(positionX: 130, positionY:-220, width:20, height:20)
            }
            Group{
                CubePinkView(positionX: 0, positionY:-220, width:200, height:20)
                CubePinkView(positionX: 0, positionY:-200, width:200, height:20)
                CubePinkView(positionX: 0, positionY:-180, width:200, height:20)
                CubePinkView(positionX: 0, positionY:-160, width:160, height:20)
                CubePinkView(positionX: 0, positionY:-140, width:120, height:20)
            }
            
            Group{
                CubeBlackView(positionX: -90, positionY:-200, width:20, height:20)
                CubeBlackView(positionX: 0, positionY:-200, width:20, height:20)
                CubeBlackView(positionX: 90, positionY:-200, width:20, height:20)
                 CubeBlackView(positionX: -50, positionY:-180, width:20, height:20)
                 CubeBlackView(positionX: 50, positionY:-180, width:20, height:20)
                 CubeBlackView(positionX: 0, positionY:-160, width:20, height:20)
                CubeBlackView(positionX: -50, positionY:-140, width:20, height:20)
                CubeBlackView(positionX: 50, positionY:-140, width:20, height:20)
            }
             Group{
                CubeWhiteView(positionX: -110, positionY:-200, width:20, height:60)
                CubeWhiteView(positionX: -90, positionY:-160, width:20, height:20)
                CubeWhiteView(positionX: -70, positionY:-140, width:20, height:20)
                CubeWhiteView(positionX: 0, positionY:-120, width:120, height:20)
                CubeWhiteView(positionX: 70, positionY:-140, width:20, height:20)
                CubeWhiteView(positionX: 90, positionY:-160, width:20, height:20)
                 CubeWhiteView(positionX: 110, positionY:-200, width:20, height:60)
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
            path.addLine(to: CGPoint(x:rect.width, y: rect.width))
            path.addLine(to: CGPoint(x:rect.width, y: rect.height))
            path.addLine(to: CGPoint(x:0, y: rect.height))
            path.addLine(to: CGPoint(x:0, y: 0))
            path.closeSubpath()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

