//
//  StoriesFluxView.swift
//  InstagramCloneUI
//
//  Created by User on 04/02/2022.
//

import SwiftUI

struct StoriesFluxView: View {
    
    static let imageNames = [
        "Profile",
        "Profile1",
        "Profile2",
        "Profile3",
        "Profile4",
        "Profile1",
        "Profile2",
        "Profile3",
        "Profile4",
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(Array(StoriesFluxView.imageNames.enumerated()), id: \.offset) { index, name in
                    VStack{
                    MyStoryView(imageName: name)
                    Text(name)
                        .font(.system(size:12))
                    }
                }
            }
            .padding(.vertical)
        }
    }
}

struct StoriesFluxView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesFluxView()
    }
}
