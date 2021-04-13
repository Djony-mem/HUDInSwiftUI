//
//  HUDView.swift
//  HUDInSwiftUI
//
//  Created by brubru on 11.03.2021.
//

import SwiftUI

struct HUDView<Content: View>: View {
    var content: Content
    var body: some View {
        content
            .padding(.horizontal, 30)
            .padding(10)
            .background(
                Capsule()
                    .foregroundColor(Color(#colorLiteral(red: 0.7056476981, green: 0.9760535327, blue: 0.9965669513, alpha: 1)))
                    .shadow(color: Color(#colorLiteral(red: 0.2528572933, green: 0.3575929785, blue: 0.4086128504, alpha: 1)).opacity(0.40
                    ), radius: 10, x: 0, y: 10)
            )
    }
}

struct HUD_Previews: PreviewProvider {
    static var previews: some View {
        HUDView(content: Label("I like", systemImage: "heart.fill"))
    }
}





