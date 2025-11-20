//
//  ContentView.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/19/25.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 0/255, green: 74/255, blue: 174/255)
    let accentColor = Color(red: 255/255, green: 195/255, blue: 27/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
