//
//  AzulView.swift
//  tab-view
//
//  Created by Turma02-2 on 23/09/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Spacer()
            Color.blue.ignoresSafeArea()
            Circle()
                .frame(width:300)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 210, height:210)
                .foregroundColor(.blue)
            Spacer()
        }
        .padding(.bottom, 5)
    }
}

#Preview {
    AzulView()
}
