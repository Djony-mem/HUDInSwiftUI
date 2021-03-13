//
//  ContentView.swift
//  HUDInSwiftUI
//
//  Created by brubru on 11.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showHUD = false
    var body: some View {
        ZStack {
            TabView {
                ForEach(0..<3) { index in
                    ZStack{
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Button("\(index)" ) {
                            withAnimation {
                                self.showHUD.toggle()
                                dismissHUD()
                            }
                        }
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle())
            VStack {
                HUDView(content: Label("I like", systemImage: "heart.fill"))
                    .offset(y: showHUD ? 0 : -100)
                    .animation(.spring())
                Spacer()
            }
        }
    }
    func dismissHUD() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.showHUD = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
