//
//  RegisterView.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import SwiftUI

struct RegisterView: View {
    @State private var fullname = ""
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer ()
            // logo image
            Image ("app-icon")
                .resizable ()
                .scaledToFit ()
                .frame (width: 150, height: 150)
                .padding()
            // text fields
            VStack {
                TextField("Enter your fullname", text: $fullname)
                    .font (. subheadline)
                    .padding (12)
                    .background (Color(.systemGray6))
                    .cornerRadius (10)
                    .padding(.horizontal, 24)
                TextField("Enter your email", text: $email)
                    .font (. subheadline)
                    .padding (12)
                    .background (Color(.systemGray6))
                    .cornerRadius (10)
                    .padding(.horizontal, 24)
                SecureField("Enter your password", text: $password)
                    .font (. subheadline)
                    .padding (12)
                    .background (Color(.systemGray6))
                    .cornerRadius (10)
                    .padding (.horizontal, 24)
            }
            // login button
            Button {
                print ("Handle login")
            } label: {
                Text ("Sign Up" )
                    .font (.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44) .background (Color (.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer ()
            
            Divider()
            
            Button{
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text ("Already have an account?")
                    Text ("Sign In")
                        .fontWeight (.semibold)
                }
                .font (.footnote)
            }
            .padding(.vertical)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
