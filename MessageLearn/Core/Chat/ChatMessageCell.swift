//
//  ChatMessageCell.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import SwiftUI

struct ChatMessageCell: View {
    let isFromCurrentUser: Bool
    
    var body: some View {
        HStack {
            if isFromCurrentUser {
                Spacer ( )
                
                Text ("This is a test message for now that is a longer message! ")
                    .font (.subheadline)
                    .padding ()
                    .background (Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame (maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
            } else {
                HStack(alignment: .bottom, spacing: 8) {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
                    Text ("This is a test message for now")
                        .font (. subheadline)
                        .padding ()
                        .background (Color(.systemGray5))
                        .foregroundColor(.black)
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                        .frame (maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)
                    Spacer()
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ChatMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatMessageCell(isFromCurrentUser: false)
    }
}
