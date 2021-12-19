//
//  ListRowItemView.swift
//  Devote
//
//  Created by KurbanAli on 19/12/21.
//

import SwiftUI

struct ListRowItemView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var item: Item
    
    var body: some View {
        Toggle(isOn: $item.complition) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.complition ? Color.pink : Color.primary)
                .padding(.vertical, 12)
                .animation(.default, value: true)
        }
        .toggleStyle(CheckBoxStyle())
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }
    }
}
