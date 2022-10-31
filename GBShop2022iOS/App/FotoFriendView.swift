////
////  FotoFriendView.swift
////  GBShop2022iOS
////
////  Created by Stanislav on 01.09.2022.
////
//
//import SwiftUI
//
//class Photo: Identifiable {
//    
//    let id: UUID = UUID()
//    let photoName: String
//    
//    internal init(icon: String) {
//        self.photoName = icon
//    }
//   
//}
//
//struct PhotoCell: View {
//    let weather: Photo
//    
//    var body: some View {
//        VStack{
//            Image(weather.photoName)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 150, height: 150, alignment: .leading)
//    }
//    }
//}
//
//struct FotoFriendView: View {
//    
//    var friend: Friend
//    
//    @State var photos = [
//        Photo(icon: "nophoto"),
//        Photo(icon: "nophoto"),
//        Photo(icon: "nophoto"),
//        Photo(icon: "nophoto"),
//    ]
//
//    var body: some View {
//        
//        ScrollView {
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 300))]) {
//                
//
//                    
//                    ForEach(photos) { weather in
//                        PhotoCell(weather: weather)
//                    }
//                    
//                }
//                
//               
//            }
//        }
//
//    }
//
