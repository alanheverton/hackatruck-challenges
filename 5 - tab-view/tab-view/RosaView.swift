//
//  RosaView.swift
//  tab-view
//
//  Created by Turma02-2 on 23/09/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Spacer()
            Color.pink.ignoresSafeArea()
            Circle()
                .frame(width:300)
            Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 210, height:210)
                .foregroundColor(.pink)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 5)
    }
}

#Preview {
    RosaView()
}
