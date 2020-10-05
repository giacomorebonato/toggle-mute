//
//  ContentView.swift
//  toggle-mute
//
//  Created by Giacomo Rebonato on 10/4/20.
//  Copyright © 2020 Giacomo Rebonato. All rights reserved.
//

import SwiftUI

struct InputRow: View {
    @State private var volume = 0.0
    @State private var isOn = true
    
    var body: some View {
        VStack {
            HStack {
                Slider(value: $volume, in: 0...10, step: 0.5)
                Toggle(isOn: $isOn) {
                    Text("Enable")
                }
            }
            Text(String(volume))
            .alignmentGuide(HorizontalAlignment.center) { _ in  50 }
        }
    }
}

struct ContentView: View {
    @State private var vibrateOnRing = false

    var body: some View {
        VStack {
            InputRow()
        }.padding(10)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
