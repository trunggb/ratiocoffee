//
//  TimerViewModel.swift
//  Ratios
//
//  Created by John Peden on 2/27/20.
//  Copyright © 2020 John Peden. All rights reserved.
//

import Foundation
import Combine

class TimerViewModel {
    public var timer = Timer.publish(every: 1, on: .current, in: .common)
    // TODO 1: Define a cancellableTimer with Optional Cancellable type


    // TODO 2: Define function start for timer

    
    public func stop() {
        guard let cTimer = cancellableTimer else {
            return
        }

        cTimer.cancel()
        timer = Timer.publish(every: 1, on: .current, in: .common)
    }
}
