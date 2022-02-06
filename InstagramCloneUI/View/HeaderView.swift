//
//  HeaderView.swift
//  InstagramCloneUI
//
//  Created by User on 04/02/2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            Image("add")
            Image("heart")
            Image("share")
        }
        .padding(.horizontal)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
