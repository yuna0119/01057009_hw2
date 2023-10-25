//
//  NightView.swift
//  01057009_hw2
//
//  Created by 許雯淇 on 2023/10/19.
//

import Foundation
import SwiftUI

struct NightView: View{
    @State private var show = false
    var body: some View{
        ZStack{
            Color.gray
            ScrollView(.vertical){
                VStack{
                    Color.gray
                    Image("宵夜封面")
                        .resizable()
                        .scaledToFill()
                        .offset(x:0, y:-80)
                    Text("宵夜")
                        .font(.largeTitle)
                        .frame(height: 150)
                        .offset(x:0, y:-130)
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/QfNjfJjCmNX2Q2pU9")!, label: {
                        Image("俞家")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .transition(.opacity)
                            .offset(x: 0, y: -150)
                        })
                            
                    }
                    Text("俞家鮮魚湯")
                        .frame(height: 70)
                        .offset(x: 0, y:-170)
                    if show{
                            Link(destination: URL(string: "https://maps.app.goo.gl/2x7XyqyhEHTuzuva7")!, label: {
                        Image("姚家")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .transition(.opacity)
                            .offset(x: 0, y: -180)
                            })
                    }
                    Text("姚家鮮魚湯")
                        .frame(height: 70)
                        .offset(x: 0, y: -200)
                    if show{
                            Link(destination: URL(string: "https://maps.app.goo.gl/BsnhL8rWpWTHFjY76")!, label: {
                        Image("蒟蒻屋")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .transition(.opacity)
                            .offset(x: 0, y: -210)
                            })
                    }
                    Text("蒟蒻屋")
                        .frame(height: 70)
                        .offset(x: 0, y: -235)
                }
                .animation(.easeIn(duration: 3), value: show)
                .onAppear{
                    show = true
                }
            }
        }
    }
}

#Preview {
    NightView()
}



