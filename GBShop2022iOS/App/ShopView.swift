//
//  ShopView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI

struct ShopView: View {
//    @State private var products: [Product] = [
//        Product(name: "Notebook", imageName: "nophoto", productPrice: 30000),
//        Product(name: "Camera", imageName: "nophoto", productPrice: 32000),
//        Product(name: "Mouse", imageName: "nophoto", productPrice: 3000),
//        Product(name: "Smartphone", imageName: "nophoto", productPrice: 60000)
//    ]
    var body: some View {
        NavigationView {
            List(productList.sorted(by: { $0.name < $1.name })) { product in
                NavigationLink(destination: PhotoProductCell(product: product)) {
                    ProductCellView(product: product)
                }
            }
            
            .listStyle(GroupedListStyle())
            .navigationBarTitle("GBShop2022iOS", displayMode: .inline)       
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
