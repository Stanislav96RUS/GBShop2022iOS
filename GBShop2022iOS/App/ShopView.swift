//
//  ShopView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI

struct ShopView: View {
    @State private var products: [Product] = [
        Product(name: "Notebook", imageName: "nophoto"),
        Product(name: "Camera", imageName: "nophoto"),
        Product(name: "Mouse", imageName: "nophoto"),
        Product(name: "Smartphone", imageName: "nophoto")
    ]
    var body: some View {
        List(products.sorted(by: { $0.name < $1.name })) { product in
            NavigationLink(destination: PhotoProductView(product: product)) {
                ProductCellView(product: product)
            }
        }

        .listStyle(GroupedListStyle())
        .navigationBarTitle("GBShop2022iOS", displayMode: .inline)       
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
