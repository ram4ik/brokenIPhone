//
//  insideD.swift
//  brokenIPhone
//
//  Created by ramil on 31.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct insideD: View {
    
    

    var body: some View {
        VStack {
            Image("insideD")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width + 20,
                       height: UIScreen.main.bounds.height + 20)
                .scaledToFill()
            
        }
    }
}
