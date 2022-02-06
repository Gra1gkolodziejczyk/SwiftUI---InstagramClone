//
//  MyStoryView.swift
//  InstagramCloneUI
//
//  Created by User on 04/02/2022.
//

import SwiftUI

struct MyStoryView: View {
    
    let imageName: String
    
    var body: some View {
        Button(action: {}) {
            Image(imageName)
                .resizable()
                .frame(width: 64, height: 64)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 5))
                .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 2))
        }
    }
}

struct MyStoryView_Previews: PreviewProvider {
    static var previews: some View {
        MyStoryView(imageName: "Profile")
    }
}
