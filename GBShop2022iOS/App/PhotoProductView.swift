//
//  PhotoProductView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI

class Photo: Identifiable {
    let id: UUID = UUID()
    let photoName: String
    
    internal init(icon: String) {
        self.photoName = icon
    }
}

struct PhotoProductCell: View {
    let photo: Photo
    
    var body: some View {
        VStack{
            HStack{
                Image(photo.photoName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300, alignment: .leading)
            }
            HStack {
                Text("Название модели")
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
                Text("1500")
                    .font(.title)
                    .padding(.trailing, 10)
            }
            .padding(.top, 18)
            
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

struct PhotoProductView: View {
    
    var product: Product
    
    @State var photos = [
        Photo(icon: "nophoto")
    ]

    var body: some View {
        
        ScrollView {
            
       
                    ForEach(photos) { photo in
                        PhotoProductCell(photo: photo)
                    }
                
            }
        }

    }
