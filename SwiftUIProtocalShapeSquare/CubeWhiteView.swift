//
//  CubeWhiteView.swift
//  SwiftUIProtocalShapeSquare
//
//  Created by Chang Sophia on 3/12/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct CubeWhiteView: View {
     var positionX: CGFloat = 0
           var positionY: CGFloat = 0
           var width: CGFloat = 0
           var height: CGFloat = 0
           
           var body: some View {
               Cube()
                   .fill(Color(red: 255/255, green: 255/255, blue:255/255))
                .frame(width: width, height: height)
                .offset(x:positionX, y: positionY)
           }
       }
struct CubeWhiteView_Previews: PreviewProvider {
    static var previews: some View {
        CubeWhiteView()
    }
}
