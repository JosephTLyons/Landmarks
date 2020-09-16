//
//  ContentView.swift
//  Landmarks
//
//  Created by Joseph Lyons on 9/15/20.
//  Copyright © 2020 Joseph Lyons. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let imageYOffset: CGFloat = -130

    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage()
                .offset(y: imageYOffset)
                .padding(.bottom, imageYOffset)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
