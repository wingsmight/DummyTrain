//
//  View+Ext.swift
//  DummyTrain
//
//  Created by Igoryok on 13.10.2022.
//

import Foundation
import SwiftUI


extension View {
    func navigationBarColor(backgroundColor: UIColor?, titleColor: UIColor?) -> some View {
         self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor))
     }
}
