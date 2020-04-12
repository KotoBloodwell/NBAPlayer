//
//  ContentView.swift
//  NBA Player
//
//  Created by Juliana Loaiza Labrador on 10/04/20.
//  Copyright © 2020 Juliana Loaiza Labrador. All rights reserved.
//

import SwiftUI

struct PlayerDetail: View {

    var currentPlayer: Player

    var body: some View {
        VStack {
            Image(currentPlayer.team.imageName).resizable().aspectRatio(contentMode: .fit)

            Image(currentPlayer.imageName).clipShape(Circle())
                .background(Circle()
                .foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .offset(x: 0, y: -90)
                .padding(.bottom, -80)
                .shadow(radius: 15)

            Text(currentPlayer.name)
                .font(.system(size: 40))
                .fontWeight(.bold).padding(.bottom, 25)

            StartText(startName: "Age", startValue: "\(currentPlayer.age)")
            StartText(startName: "Height", startValue: currentPlayer.height)
            StartText(startName: "Weight", startValue: "\(currentPlayer.weight)lbs")

            Spacer()

        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(currentPlayer: players[1])
    }
}
