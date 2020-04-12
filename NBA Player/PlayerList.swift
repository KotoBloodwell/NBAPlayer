//
//  PlayerList.swift
//  NBA Player
//
//  Created by Juliana Loaiza Labrador on 11/04/20.
//  Copyright © 2020 Juliana Loaiza Labrador. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink.init(destination: PlayerDetail(currentPlayer: currentPlayer)) {
                    PlayerRow(player: currentPlayer).frame(height: 50)
                }
            }.navigationBarTitle("NBA Final Players")
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
