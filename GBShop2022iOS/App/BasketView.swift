//
//  BasketView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI

struct BasketView: View {
    var body: some View {
        NavigationView {
            VStack{
            Image("3DBox")
                .renderingMode(.template)
                .resizable()
                .foregroundColor(Color.brown)
                .aspectRatio(contentMode: .fill)
                .frame(width: 200.0, height: 200.0)
            Text("Магазин в процессе наполнения!")
                .frame(width: 300.0, height: 50.0)
            }
        }
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
