//
//  RegSuccessView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 31.10.2022.
//

import SwiftUI

struct RegSuccessView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Вы успешно зарегистрировались!")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
            }
            HStack {
                NavigationLink(destination: UserView(), label: {
                    Text ("Войти в приложение")
                        .frame(width: 270.0, height: 40.0)
                        .foregroundColor(Color.white)
                } )
            }
            .frame(maxWidth: 270)
            .background(Color.green)
            .cornerRadius(7)
        }
    }
}
struct RegSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        RegSuccessView()
    }
}
