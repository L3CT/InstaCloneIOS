//
//  ContentView.swift
//  InstagramClone_IOS
//
//  Created by Olivier Marszałkowski on 21/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(systemName: "heart").resizable().frame(width: 25, height: 25, alignment: .center)
                    Spacer()
                    Image(systemName: "heart").resizable().frame(width: 25, height: 25, alignment: .center)
                    Spacer()
                    Image(systemName: "heart").resizable().frame(width: 25, height: 25, alignment: .center)
                    Spacer()
                }.frame(width: 150, alignment: .center)
            }
            Spacer()
            List(1..<6){ counter in
                PostView(postImage: Image("swift"), author: "Me(\(counter))", likes: counter+2)
            }
            Spacer()
            HStack{
                Group{
                    Spacer()
                    Image(systemName: "house.fill").resizable().frame(width: 25, height: 25, alignment: .center)
                    Spacer()
                }
                Image(systemName: "magnifyingglass").resizable().frame(width: 25, height: 25, alignment: .center)
                Spacer()
                Image(systemName: "play.square").resizable().frame(width: 25, height: 25, alignment: .center)
                Spacer()
                Image(systemName: "bag.fill").resizable().frame(width: 25, height: 25, alignment: .center)
                Spacer()
                Circle().frame(width: 25, height: 25, alignment: .center)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 13 Pro Max")
    }
}
