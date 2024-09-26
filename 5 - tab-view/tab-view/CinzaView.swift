//
//  CinzaView.swift
//  tab-view
//
//  Created by Turma02-2 on 23/09/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Spacer()
            Color.gray.ignoresSafeArea()
            Circle()
                .frame(width:300)
            Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 210, height:210)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.bottom, 5)
    }
}

#Preview {
    CinzaView()
}
