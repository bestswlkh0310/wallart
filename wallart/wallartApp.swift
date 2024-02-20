//
//  wallartApp.swift
//  wallart
//
//  Created by dgsw8th71 on 2/20/24.
//

import SwiftUI

@main
struct wallartApp: App {
    
    @State var vm = ViewModel()
    
    init() {
        ImpactParticleSystem.registerSystem()
        ProjectileComponent.registerComponent()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(vm)
        }
        .windowStyle(.plain)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
                .environment(vm)
        }
        
        WindowGroup(id: "doodle_canvas") {
            DoodleView()
                .environment(vm)
        }
    }
}
