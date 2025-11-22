//
//  ChoiceTextView.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/22/25.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 255/255, green: 195/255, blue: 27/255)

    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Hi!")
}
