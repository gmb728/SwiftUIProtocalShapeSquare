//
//  SquareView.swift
//  SwiftUIProtocalShapeSquare
//
//  Created by Chang Sophia on 3/12/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct CubeView: View {
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var width: CGFloat = 0

    var body: some View {
        Cube()
            .fill(Color(red: 0/255, green: 0/255, blue:0/255))
         .frame(width: width, height: width)
         .offset(x:positionX, y: positionY)
    }
}

struct CubeView_Previews: PreviewProvider {
    static var previews: some View {
       CubeView()
    }
}
