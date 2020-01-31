//
//  brokenView.swift
//  brokenIPhone
//
//  Created by ramil on 31.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct brokenView: View {
    var body: some View {
        VStack {
            Image("broken")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width,
                       height: UIScreen.main.bounds.height)
                .scaledToFill()
        }
    }
}

struct brokenView_Previews: PreviewProvider {
    static var previews: some View {
        brokenView()
    }
}
