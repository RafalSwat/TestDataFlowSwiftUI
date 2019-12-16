//
//  MainView.swift
//  TestDataFlowSwiftUI
//
//  Created by Rafał Swat on 16/12/2019.
//  Copyright © 2019 Rafał Swat. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var profile = Profile()
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        VStack {
            Text("\(profile.score)")
            Button("Add one point!") {
                self.profile.score += 1
            }
            Button("Change Color from MV") {
                self.settings.colorChanger.toggle()
                print(self.settings.colorChanger)
            }
            .padding()
            
            AnotherView(bindingScore: $profile.score)
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
