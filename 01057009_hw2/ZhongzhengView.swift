//
//  ZhongzhengView.swift
//  01057009_hw2
//
//  Created by 許雯淇 on 2023/10/19.
//

import Foundation
import SwiftUI

struct ZhongzhengView: View{
    @State private var show = false
    var body: some View{
        ScrollView(.vertical){
            VStack{
                Image("中正區")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400)
                    .offset(x: 0, y: -60)
                Text("中正區")
                    .font(.largeTitle)
                    .frame(height: 150)
                    .offset(x: 0, y: -120)
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/n3SSe9KS8P8bLFHy8")!, label: {
                            Image("notte")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .offset(x: -20, y: -120)
                                .transition(.opacity)
                        })
                    }
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/JgrD8fdjiY5Lm1NA7")!, label: {
                            Image("馬龍")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .offset(x: 20, y: -120)
                                .transition(.opacity)
                        })
                    }
                }
                HStack{
                    Text("notte pasta")
                        .frame(height: 70)
                        .offset(x: -65, y:-130)
                    Text("marlon")
                        .frame(height: 70)
                        .offset(x: 60, y: -130)
                }
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/R5ZBS9P5HseBvfsW9")!, label: {
                            Image("灶咖")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .offset(x: -20, y: -120)
                                .transition(.opacity)
                        })
                    }
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/xix2sgAmks4buzPC7")!, label: {
                            Image("林桑")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .offset(x: 20, y: -120)
                                .transition(.opacity)
                        })
                    }
                }
                HStack{
                    Text("灶咖")
                        .frame(height: 70)
                        .offset(x: -55, y:-130)
                    Text("林桑壽司")
                        .frame(height: 70)
                        .offset(x: 80, y: -130)
                }
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/H4cxFmB2iwx4Tvw48")!, label: {
                            Image("河豚很多")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .offset(x: -20, y: -120)
                                .transition(.opacity)
                        })
                    }
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/qBKusPDhKMugDauP8")!, label: {
                            Image("望海巷")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .offset(x: 20, y: -120)
                                .transition(.opacity)
                        })
                    }
                }
                HStack{
                    Text("河豚很多")
                        .frame(height: 70)
                        .offset(x: -35, y: -120)
                    Text("望海巷石頭火鍋")
                        .frame(height: 70)
                        .offset(x: 60, y: -120)
                }
            }
            .animation(.easeIn(duration: 3), value: show)
            .onAppear{
                show = true
            }
        }
    }
}

#Preview {
    ZhongzhengView()
}


