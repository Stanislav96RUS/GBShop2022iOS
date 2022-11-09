//
//  MainView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
        UINavigationBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 1
    @State var shouldShowModal = false
    
    let tabBarImageNames = ["User", "ShoppingBag", "ShoppingCart"]
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Spacer()
                
                switch selectedIndex {
                case 0:
                    UserView()
                case 1:
                    ShopView()
                case 2:
                    BasketView()
//                    NavigationView {
//                        VStack{
//                            Image("ShoppingBasket")
//                                .renderingMode(.template)
//                                .resizable()
//                                .foregroundColor(Color.black)
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 200.0, height: 200.0)
//                            Text("Ваша корзина пуста!")
//                                .frame(width: 300.0, height: 50.0)
//                        }
//                    }
                default:
                    NavigationView {
                        Text("Что нибудь, когда нибудь еще .....")
                    }
                }
                
            }
            Divider()
                .padding(.bottom, 8)
            HStack {
                ForEach(0..<tabBarImageNames.count, id: \.self) { num in
                    Button(action: {
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        Image(tabBarImageNames[num])
                            .renderingMode(.template)
                            .font(.system(size: 10, weight: .bold))
                            .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.7))
                        
                        
                        Spacer()
                    }
                           
                    )
                    
                }
            }
            
        }
    }
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
