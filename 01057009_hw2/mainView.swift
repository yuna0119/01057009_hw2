//
//  mainView.swift
//  01057009_hw2
//
//  Created by 許雯淇 on 2023/10/19.
//

import Foundation
import SwiftUI

struct mainView: View{
    //@State private var show = false
    var body: some View{
        NavigationStack{
            ScrollView(.vertical){
                VStack{
                    Image("合照")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400)
                        .offset(x:0, y:-60)
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 250, height: 100)
                        .offset(x: 0, y: -65)
                        .foregroundStyle(.yellow)
                    Text("基隆美食地圖")
                        .font(.largeTitle)
                        .frame(height: 150)
                        .offset(x: 0, y: -200)
                    NavigationLink{
                        //跳到的畫面
                        FoodView()
                    }label:{//按的按鈕
                        Image("正餐的封面")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x:0, y:-170)
                    }
                    Text("正餐")
                        .frame(height: 70)
                        .offset(x:0, y:-180)
                        //.animation(.spring(bounce: 0.4), value: show)
                        //.onAppear{
                            //show = true
                        //}
                    NavigationLink{
                        DessertView()
                    }label:{
                        Image("下午茶封面")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x:0, y:-170)
                    }
                    Text("下午茶")
                        .frame(height: 70)
                        .offset(x:0, y:-170)
                    NavigationLink{
                        NightView()
                    }label:{
                        Image("俞家")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x:0, y:-170)
                    }
                    Text("宵夜")
                        .frame(height: 70)
                        .offset(x:0, y:-170)
                }
            }
        }
    }
}

#Preview{
    mainView()
}

