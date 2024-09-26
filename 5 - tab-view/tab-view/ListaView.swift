//
//  ListaView.swift
//  tab-view
//
//  Created by Turma02-2 on 23/09/24.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        List{
            HStack{
                Text("Item")
                Spacer()
                Image(systemName: "paintbrush")
            }
            HStack{
                Text("Item")
                Spacer()
                Image(systemName: "paintbrush.pointed")
            }
            HStack{
                Text("Item")
                Spacer()
                Image(systemName: "paintpalette")
            }.navigationTitle("List")
        }
    }
}
#Preview {
    ListaView()
}
