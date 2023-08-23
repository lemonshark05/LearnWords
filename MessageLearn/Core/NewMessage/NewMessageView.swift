//
//  NewMessageView.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import SwiftUI

struct NewMessageView: View {
    @State private var searchText = ""
    @StateObject private var viewModel = NewMessageViewModel()
    @Binding var selectedUser: User?
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            ScrollView {
                TextField("To: ", text:$searchText)
                    .frame (height: 44)
                    .padding (.leading)
                    .background (Color (.systemGroupedBackground))
                
                Text ("CONTACTS")
                    .foregroundColor(.gray)
                    .font (.footnote)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding ()
                
                ForEach(viewModel.users) { user in
                    VStack {
                        HStack {
                            CircularProfileImageView(user: user, size: .small)
                            Text(user.fullname)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding (.leading)
                        Divider ()
                            .padding (.leading, 40)
                    }
                    .onTapGesture {
                        selectedUser = user
                        dismiss()
                    }
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement:.navigationBarLeading) {
                    Button("Cancel") {
                        dismiss ()
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NewMessageView(selectedUser: .constant(User.MOCK_USER))
        }
    }
}
