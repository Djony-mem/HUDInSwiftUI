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
            tabView
            .tabViewStyle(PageTabViewStyle())
            VStack {
                HUDView(content: Label("I like", systemImage: "heart.fill"))
                    .offset(y: showHUD ? 0 : -100)
                    .animation(.spring())
                Spacer()
            }
        }
    }
    
    private var tabView: some View {
        TabView {
            ForEach(0..<3) { _ in
                    Button("Show HUD") {
                            self.showHUD.toggle()
                            dismissHUD()
                }
            }
        }
    }
    
    private func dismissHUD() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.showHUD = false
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
