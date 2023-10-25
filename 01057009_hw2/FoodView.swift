//
//  FoodView.swift
//  01057009_hw2
//
//  Created by 許雯淇 on 2023/10/19.
//

import Foundation
import SwiftUI

struct FoodView: View{
    var body: some View{
        ZStack{
            NavigationStack{
                ScrollView(.vertical){
                    VStack{
                        Text("正餐")
                            .font(.largeTitle)
                            .frame(height: 150)
                        NavigationLink{
                            ZhongzhengView()
                        }label:{
                            Image("中正路")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                        }
                        Text("中正區")
                            .frame(height: 70)
                        NavigationLink{
                            XinyiView()
                        }label:{
                            Image("市區")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                        }
                        Text("市區")
                            .frame(height: 70)
                    }
                }
            }
        }
    }
}

#Preview {
    FoodView()
}

