//
//  ChoiceTextView.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/22/25.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String

    var body: some View {
        Text(choiceText)
            .font(.system(size: 15, weight: .bold))
            .bold()
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, minHeight: 95)
            .padding(.horizontal)
            .border(GameColor.accent, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Ludwig von Schwarenburg")
}
