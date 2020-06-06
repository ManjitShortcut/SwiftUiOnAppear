//
//  ContentView.swift
//  OnAppearDesApear
//
//  Created by Manjit on 05/06/2020.
//  Copyright © 2020 OnAppearDesApear. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination:DetailView()){
                    Text("Hello, World!")
                }
            }
        }.onAppear{
            print("on appear")
        }.onDisappear{
            print("on disapper")
        }
    }
}

struct DetailView: View{
    var body: some View {
        VStack{
            Text("Back")
        }.onDisappear{
            print("on disapper")
        }.onAppear{
            print("on appear")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
