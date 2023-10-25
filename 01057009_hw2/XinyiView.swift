//
//  XinyiView.swift
//  01057009_hw2
//
//  Created by 許雯淇 on 2023/10/19.
//

import Foundation
import SwiftUI

struct XinyiView: View{
    @State private var show = false
    var body: some View{
        ScrollView(.vertical){
            VStack{
                    Image("市區")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400)
                        .offset(x: 0, y: -60)
                Text("市區美食")
                    .font(.largeTitle)
                    .frame(height: 150)
                    .offset(x: 0, y:-120)
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/fZbDs1nCAY8Ts6wFA")!, label: {
                        Image("一碗飄香")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: -20, y:-120)
                            .transition(.opacity)
                        })
                    }
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/xWyEDjiGoBqj8Tc9A")!, label: {
                        Image("長腳")
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
                    Text("一碗飄香")
                        .frame(height: 70)
                        .offset(x: -55, y:-120)
                    Text("長腳麵食")
                        .frame(height: 70)
                        .offset(x: 60, y:-120)
                    
                }
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/zdXawWfJPQYHx3G97")!, label: {
                        Image("智光")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: -20, y:-120)
                            .transition(.opacity)
                        })
                    }
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/AcF3QRRh6DVV5Wz79")!, label: {
                        Image("曾家")
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
                    Text("智光乾拌麵")
                        .frame(height: 70)
                        .offset(x: -55, y:-120)
                    Text("曾家鍋貼")
                        .frame(height: 70)
                        .offset(x: 55, y:-120)
                    
                }
                HStack{
                    if show{
                        Link(destination: URL(string: "https://maps.app.goo.gl/qkCgY3KxRJPQcNTY7")!, label: {
                        Image("舶食")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .offset(x: -20, y:-120)
                            .transition(.opacity)
                        })
                    }
                    if show{
                            Link(destination: URL(string: "https://maps.app.goo.gl/GDfJhBr3aidShHjQ7")!, label: {
                        Image("春川")
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
                    Text("舶食")
                        .frame(height: 70)
                        .offset(x: -40, y:-120)
                    Text("春川韓式小館")
                        .frame(height: 70)
                        .offset(x: 80, y:-120)
                    
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
    XinyiView()
}


