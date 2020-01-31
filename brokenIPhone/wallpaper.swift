//
//  wallpaper.swift
//  brokenIPhone
//
//  Created by ramil on 31.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct wallpaper: View {
    var body: some View {
        VStack {
            Image("wallpaper")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width,
                       height: UIScreen.main.bounds.height)
                .scaledToFill()
        }
    }
}

struct wallpaper_Previews: PreviewProvider {
    static var previews: some View {
        wallpaper()
    }
}
