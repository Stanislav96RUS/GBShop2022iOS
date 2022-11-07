//
//  ProductCellView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI


struct ProductCellView: View {
    
    let product: Product
    
    var body: some View {
        
        HStack {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .leading)
            Text("\(product.name)")
        }
}

}
