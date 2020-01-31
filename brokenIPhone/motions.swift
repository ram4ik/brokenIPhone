//
//  motions.swift
//  brokenIPhone
//
//  Created by ramil on 31.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation
import CoreMotion
import SwiftUI



class Motions: ObservableObject {
    
    static let shared = Motions()
    
    @Published var x: CGFloat = 0.0
    @Published var y: CGFloat = 0.0
    @Published var z: CGFloat = 0.0
    
    let motionManager = CMMotionManager()
    var timer: Timer!
    
    func startMotions() {
        
        motionManager.startAccelerometerUpdates()
        motionManager.startGyroUpdates()
        motionManager.startMagnetometerUpdates()
        motionManager.startDeviceMotionUpdates()
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }

    @objc func update() {
        if let accelerometerData = motionManager.accelerometerData {
            //print(accelerometerData)
        }
        if let gyroData = motionManager.gyroData {
            
            Motions.shared.x = CGFloat(gyroData.rotationRate.x)
            Motions.shared.y = CGFloat(gyroData.rotationRate.y)
            Motions.shared.z = CGFloat(gyroData.rotationRate.z)
            
//            print(Motions.shared.x)
//            print(Motions.shared.y)
//            print(Motions.shared.z)
        }
        if let magnetometerData = motionManager.magnetometerData {
            //print(magnetometerData)
        }
        if let deviceMotion = motionManager.deviceMotion {
            //print(deviceMotion)
        }
    }
    
}
