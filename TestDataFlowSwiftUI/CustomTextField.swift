//
//  CustomTextField.swift
//  TestDataFlowSwiftUI
//
//  Created by Rafał Swat on 16/12/2019.
//  Copyright © 2019 Rafał Swat. All rights reserved.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    
    var body: some View {
        VStack {
            Text(text)
            TextField("Enter sth...", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    @State static var prevText: String = "something"
    
    static var previews: some View {
        CustomTextField(text: $prevText)
    }
}
