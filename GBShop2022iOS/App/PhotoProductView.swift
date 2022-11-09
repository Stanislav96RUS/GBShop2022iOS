//
//  PhotoProductView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI

struct PhotoProductCell: View {
    let product: Product
    let requestFactory = RequestFactory()
   
    var body: some View {
        
        let addBasket = requestFactory.makeAddBasketRequestFatory()
        
        ScrollView {
            VStack{
                HStack{
                    Image(product.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .leading)
                }
                HStack {
                    Text(product.name)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .padding(.top, 32)
                        .font(.largeTitle)
                }
                HStack {
                    Text("Цена:")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.leading, 10.0)
                    Spacer()
                    Text("\(product.price)₽")
                        .font(.title)
                        .padding(.trailing, 10)
                }
                .padding(.top, 18)
                
                HStack {
                    Button {addBasket.addBasket(idProduct: 127, idUser: 123) { response in
                        switch response.result {
                        case .success(let addBasket):
                            print(addBasket)
                        case .failure(let error):
                            print(error.localizedDescription)
                        }
                    }} label: {
                        Text ("Купить")
                            .frame(width: 370.0, height: 68.0)
                            .foregroundColor(Color.white)
                    }
                }
                .frame(maxWidth: 370)
                .background(Color.red)
                .cornerRadius(7)
                Spacer()
                
                HStack {
                    Text("Отзыв")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .padding(.top, 32)
                        .font(.largeTitle)
                }
                HStack {
                    Text("Текст отзыва")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.leading, 10.0)
                    Spacer()
                }
                .padding(.top, 18)
            }
        }
    }
}

struct PhotoProductView: View {
    
    var product: Product

    var body: some View {
        
        ScrollView {
            ForEach(productList) { product in
                PhotoProductCell(product: product)
            }
            
        }
    }
    
}
