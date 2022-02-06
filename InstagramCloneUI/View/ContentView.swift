//
//  ContentView.swift
//  InstagramCloneUI
//
//  Created by User on 04/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                TabView {
                        VStack {
                            HeaderView()
                            StoriesFluxView()
                                .padding(.leading)
                            ScrollView(showsIndicators: false) {
                                ForEach(0..<10) { _ in
                                    PosteView()
                                }
                            }
                            Spacer()
                        }
                        .navigationBarHidden(true)
                        .tabItem {
                            Image("home")
                        }
                    Text("Search")
                        .tabItem {
                            Image("search")
                        }
                    Text("Reels")
                        .tabItem {
                            Image("reels")
                        }
                    Text("Shopping")
                        .tabItem() {
                            Image("shop")
                        }
                    Text("Profile")
                        .tabItem {
                            Image("ProfilePic")
                        }
                }
                .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
