//
//  DoodleView.swift
//  wallart
//
//  Created by dgsw8th71 on 2/20/24.
//

import SwiftUI
import UIKit
import RealityKit

struct DoodleView: View {
    
    @Environment(ViewModel.self) private var viewModel
    @State private var image: UIImage? = nil
    @State private var showShareSheet = false
    @Environment(\.dismissWindow) private var dismissWindow

    var body: some View {
        VStack {
            DrawingView()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
                .padding()
            
            Button("Done") {
                dismissWindow(id: "doodle_canvas")
                viewModel.flowState = .projectileFlying
            }
            Spacer()
        }
    }
}
