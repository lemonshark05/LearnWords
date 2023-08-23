//
//  InboxRowView.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
            VStack(alignment:.leading, spacing: 4) {
                Text ("Heath Ledger")
                    .font (. subheadline)
                    .fontWeight (.semibold)
                Text ("Some test message for now that spans more than one line")
                    . font (.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds .width - 100, alignment: .leading)
            }
            HStack {
                Text ("Yesterday")
                Image (systemName: "chevron.right" )
            }
            .font (.footnote)
            .foregroundColor(.gray)
        }
        .padding (.horizontal)
        . frame (height: 72)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
