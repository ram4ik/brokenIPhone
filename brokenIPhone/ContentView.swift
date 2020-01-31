//
//  ContentView.swift
//  brokenIPhone
//
//  Created by ramil on 31.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var change: Bool = false
    @State private var inside: Bool = false
    
    @ObservedObject var m = Motions.shared
    
    
    var body: some View {
        ZStack {
            wallpaper().onTapGesture {
                self.change = true
                print("tapped")
                print("x: \(self.m.x)")
                print("y: \(self.m.y)")
            }
            
            if change {
                if inside {
                    insideD()
                        .offset(
                            x: m.x ?? 0.0,
                            y: m.y ?? 0.0
                    )
                        .animation(.default)
                    
                    
                    broken()
                }
                brokenView().onTapGesture {
                    self.inside = true
                    print("tapped")
                    print("x: \(self.m.x)")
                    print("y: \(self.m.y)")
                }
            }

        }.onAppear() {
            let m = Motions()
            m.startMotions()
            
        }
    }
}


