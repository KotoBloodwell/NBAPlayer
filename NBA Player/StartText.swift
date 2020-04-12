//
//  StartText.swift
//  NBA Player
//
//  Created by Juliana Loaiza Labrador on 10/04/20.
//  Copyright © 2020 Juliana Loaiza Labrador. All rights reserved.
//

import SwiftUI

struct StartText: View {

    var startName: String
    var startValue: String

    var body: some View {
        HStack {

            Text(startName + ":").font(.system(size:30))
                .fontWeight(.bold)
                .padding(.leading, 30)

            Text(startValue).font(.system(size:30))
                .fontWeight(.light)
                .padding(.trailing, 20)

            Spacer()
        }
    }
}

struct StartText_Previews: PreviewProvider {
    static var previews: some View {
        StartText(startName: "Age", startValue: "31")
    }
}
