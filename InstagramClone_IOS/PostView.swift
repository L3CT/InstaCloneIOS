//
//  PostView.swift
//  InstagramClone_IOS
//
//  Created by Olivier Marszałkowski on 21/03/2022.
//

import SwiftUI

struct PostView: View {
    private var image: Image = Image("swift")
    private var author: String = ""
    private var likes: Int = 0
    
    
    init(postImage: Image, author: String, likes: Int){
        self.image = postImage
        self.author = author
        self.likes = likes
    }
    
    var body: some View {
        VStack{
            HStack{
                Spacer().frame(width: 20)
                Text(self.author)
                Spacer()
            }
            self.image.frame(width: 300, height: 400, alignment: .center)
            HStack{
                Spacer().frame(width: 20)
                HStack {
                    Image(systemName: "heart.fill").foregroundColor(.red).frame(width: 25, height: 25, alignment: .center)
                    Text(String(likes))
                }
                Spacer()
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        List(){
            PostView(postImage: Image("swift"), author: "Ja", likes: 1)
            PostView(postImage: Image("swift"), author: "Ja", likes: 1)
        }
    }
}
