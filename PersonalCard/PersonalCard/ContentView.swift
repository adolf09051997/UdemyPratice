//
//  ContentView.swift
//  PersonalCard
//
//  Created by Hung Yu Liao on 2021/9/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.97, green: 0.94, blue: 0.73)//opacity 另一個屬性相當於 alpha
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("1234")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle()
                    .stroke(Color.white, lineWidth: 5))
                Text("Hung Yu")
                    .font(.custom("GrechenFuemen-Regular", size: 40))//需要到info去增加fonts provided by application 的選項並且加上想新增的字型完整名稱
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                Text("iOS Developer")
                    .foregroundColor(Color("Info Color"))
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "5656", imageName: "phone.fill")
                InfoView(text: "WQDDA@Gmail.com", imageName: "envelope.fill")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


