//
//  AnotherView.swift
//  TestDataFlowSwiftUI
//
//  Created by Rafał Swat on 16/12/2019.
//  Copyright © 2019 Rafał Swat. All rights reserved.
//

import SwiftUI

struct AnotherView: View {
    
    @Binding var bindingScore: Int
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        
        VStack {
            Text("\(bindingScore)")
            Button("Add two points!") {
                self.bindingScore += 2
            }
            Button("Change color from AV") {
                self.settings.colorChanger.toggle()
                print(self.settings.colorChanger)
            }
        }
    }
}

struct AnotherView_Previews: PreviewProvider {
    @State static var prevScore: Int = 2
    
    static var previews: some View {
        AnotherView(bindingScore: $prevScore)
    }
}
