//
//  VM.swift
//  wallart
//
//  Created by dgsw8th71 on 2/20/24.
//

import Foundation
import Observation
import SwiftUI

enum FlowState {
    case idle
    case intro
    case projectileFlying
    case updateWallArt
}

@Observable
class ViewModel {
    
    var flowState = FlowState.idle
    
}
