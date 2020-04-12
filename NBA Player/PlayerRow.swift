//
//  PlayerRow.swift
//  NBA Player
//
//  Created by Juliana Loaiza Labrador on 10/04/20.
//  Copyright © 2020 Juliana Loaiza Labrador. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {

    var player: Player

    var body: some View {
        HStack {
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .background(Circle()
                .foregroundColor(player.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
            Text(player.name)
                .font(.system(size: 25))
                .fontWeight(.medium)
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[1]).previewLayout(.fixed(width: 500, height: 100))
    }
}
