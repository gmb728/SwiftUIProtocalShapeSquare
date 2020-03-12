//
//  CubePinkView.swift
//  SwiftUIProtocalShapeSquare
//
//  Created by Chang Sophia on 3/12/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct CubePinkView: View {
     var positionX: CGFloat = 0
           var positionY: CGFloat = 0
           var width: CGFloat = 0
           var height: CGFloat = 0
           
           var body: some View {
               Cube()
                .fill(LinearGradient(gradient:Gradient(colors:
                [Color(.sRGB, red: 244/255, green: 29/255, blue: 175/255, opacity: 1),Color(.sRGB, red: 240/255, green: 73/255, blue: 120/255, opacity: 0.4)]),startPoint: .leading, endPoint: .trailing))
                .frame(width: width, height: height)
                .offset(x:positionX, y: positionY)
            
           }
       }

struct CubePinkView_Previews: PreviewProvider {
    static var previews: some View {
        CubePinkView()
    }
}
