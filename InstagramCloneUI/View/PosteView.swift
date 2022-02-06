//
//  PosteView.swift
//  InstagramCloneUI
//
//  Created by User on 06/02/2022.
//

import SwiftUI

struct PosteView: View {
    
    let imageButtons = [
        "heart",
        "comment",
        "share",
        "bookmark"
    ]
    
    var body: some View {
        VStack {
            HStack {
                Image("Apple")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .overlay(Circle().stroke(.black))
                Button(action : {}) {
                    Text("Apple")
                        .foregroundColor(.black)
                        .bold()
                }
                Spacer()
                Button(action: {}) {
                    Image("more")
                }
            }
            .padding(.horizontal, 4)
        Image("Poste-Image")
            .resizable()
            .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                HStack(spacing: 12) {
                    ForEach(imageButtons, id: \.self) { imgbutton in
                        Button(action:  {}) {
                            Image(imgbutton)
                        }
                        if imgbutton == "share" {
                            Spacer()
                        }
                    }
                }
                Button(action: {}) {
                    Text("3 298 367 likes")
                        .font(.system(size: 14))
                        .bold()
                }.foregroundColor(.black)
                
                HStack(spacing: 4) {
                Button(action: {}) {
                    Text("Apple")
                        .bold()
                }
                .foregroundColor(.black)
                Text("The New Macbook pro M1 in store !! <3")
            }
            
            HStack {
                Image("ProfilePic")
                TextField("add comment...", text:
                    .constant(""))
                Button(action : {}) {
                    Image("plus")
                }
            }
            Text("34 minutes ago")
                .font(.caption)
                .foregroundColor(Color(.systemGray3))
            }
            .padding(.horizontal, 4)
            Spacer()
        }
    }
}

struct PosteView_Previews: PreviewProvider {
    static var previews: some View {
        PosteView()
    }
}
