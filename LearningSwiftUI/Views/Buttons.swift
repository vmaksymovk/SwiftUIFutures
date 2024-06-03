//
//  Buttons.swift
//  LearningSwiftUI
//
//  Created by Влад on 6/3/24.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack(spacing: 20){
            Button("Button #1", role: .destructive) {
                //
            }
            .buttonStyle(buttonStyleAdvanced())
            
           

            
            
            
        }
        
    }
    
    
}

struct buttonStyleAdvanced: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundStyle(configuration.isPressed ? .blue : .cyan)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(.black)
                    .opacity(0.25)
                    
            )
            .font(.largeTitle)
            
        
    }
}

#Preview {
    Buttons()
}
