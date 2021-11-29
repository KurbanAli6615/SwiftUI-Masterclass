//
//  CenterModifier.swift
//  Africa
//
//  Created by KurbanAli on 29/11/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
