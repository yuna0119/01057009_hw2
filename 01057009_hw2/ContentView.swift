//
//  ContentView.swift
//  01057009_hw2
//
//  Created by 許雯淇 on 2023/10/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView {
                mainView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("主頁")
                    }
                FoodView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("正餐")
                    }
                DessertView()
                    .tabItem {
                        Image(systemName: "photo.artframe")
                        Text("下午茶")
                    }
                NightView()
                    .tabItem {
                        Image(systemName: "lightbulb")
                        Text("宵夜")
                    }
            }
            .accentColor(.green) //選取時呈現橘色
        }
    }
}

#Preview {
    ContentView()
}
