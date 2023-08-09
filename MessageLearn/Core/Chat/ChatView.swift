//
//  ChatView.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    VStack(spacing: 4){
                        Text("Hula")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("Messangar")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                // messages
                ForEach(0 ... 15, id: \.self) { message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
                
                // message input view
                
            }
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding (12)
                    .padding(.trailing, 48)
                    .background (Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button {
                    print ("Send message")
                }label: {
                    Text ("Send" )
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
