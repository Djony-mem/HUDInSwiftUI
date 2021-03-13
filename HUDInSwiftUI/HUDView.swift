//
//  HUDView.swift
//  HUDInSwiftUI
//
//  Created by brubru on 11.03.2021.
//

import SwiftUI

struct HUDView<Content: View>: View {
    var content: Content
    @ViewBuilder var body: some View {
        content
            .padding(.horizontal, 10)
            .padding(10)
            .background(
                Capsule()
                    .foregroundColor(Color.white)
                    .shadow(color: Color(.black).opacity(0.15
                    ), radius: 10, x: 0, y: 10)
            )
    }
}

struct HUD_Previews: PreviewProvider {
    static var previews: some View {
        HUDView(content: Label("I like", systemImage: "heart.fill"))
    }
}

