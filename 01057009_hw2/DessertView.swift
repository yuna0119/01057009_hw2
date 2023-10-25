//
//  XinyiView.swift
//  01057009_hw2
//
//  Created by 許雯淇 on 2023/10/19.
//

import Foundation
import SwiftUI

struct DessertView: View{
    @State private var show = false
    var body: some View{
        ScrollView(.vertical){
            VStack{
                    Image("下午茶")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400)
                        .offset(x: 0, y: -50)
                Text("下午茶")
                    .font(.largeTitle)
                    .frame(height: 150)
                    .offset(x: 0, y:-100)
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/JNu1WaMUjJV6UZWY9")!, label: {
                        Image("圖門")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: -20, y:-120)
                            .transition(.opacity)
                        })
                    }
                    if show{
                            Link(destination: URL(string: "https://maps.app.goo.gl/MgitHmZ5FJWC7aVz6")!, label: {
                        Image("海那邊")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: 20, y:-120)
                            .transition(.opacity)
                            })
                    }
                }
                HStack{
                    Text("圖們咖啡")
                        .frame(height: 70)
                        .offset(x: -65, y:-120)
                    Text("海那邊")
                        .frame(height: 70)
                        .offset(x: 60, y:-120)
                    
                }
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/BMs8JKaMcvHhLPwZ7")!, label: {
                        Image("閑閑")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: -20, y:-120)
                            .transition(.opacity)
                        })
                    }
                    if show{
                            Link(destination: URL(string: "https://maps.app.goo.gl/FyJAZDSJChkqd7fc7")!, label: {
                        Image("海漾時光")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: 20, y:-120)
                            .transition(.opacity)
                            })
                    }
                }
                HStack{
                    Text("閑閑")
                        .frame(height: 70)
                        .offset(x: -55, y:-120)
                    Text("海漾拾光")
                        .frame(height: 70)
                        .offset(x: 80, y:-120)
                    
                }
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/92zE51NPKZbAPLJZ9")!, label: {
                        Image("樂品喜塘")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: -20, y:-120)
                            .transition(.opacity)
                        })
                    }
                    if show{
                            Link(destination: URL(string: "https://maps.app.goo.gl/SQuyghdib2FXgK4q8")!, label: {
                        Image("島上有冰")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: 20, y:-120)
                            .transition(.opacity)
                            })
                    }
                }
                HStack{
                    Text("樂品喜塘")
                        .frame(height: 70)
                        .offset(x: -55, y:-120)
                    Text("島上有冰")
                        .frame(height: 70)
                        .offset(x: 70, y:-120)
                    
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
    DessertView()
}


