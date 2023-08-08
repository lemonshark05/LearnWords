//
//  LoginView.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                // logo image
                Image ("app-icon")
                    .resizable ()
                    .scaledToFit ()
                    .frame(width: 150, height: 150)
                    .padding ()
                // text fields
                VStack(spacing: 12) {
                    TextField("Enter your email", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background (Color (.systemGray6))
                        .cornerRadius (10)
                        .padding (.horizontal, 24)
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background (Color (.systemGray6))
                        .cornerRadius (10)
                        .padding (.horizontal, 24)
                }
                // forgot password
                Button {
                    print ("Forgot password")
                } label: {
                    Text ("Forgot password?")
                        .font(.footnote)
                        .fontWeight (.semibold)
                        .padding (.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                // login button
                Button {
                    print ("Handle login" )
                } label: {
                    Text ("Login" )
                        .font (.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44) .background (Color (.systemBlue))
                        .cornerRadius(10)
                }
                .padding(.vertical)
                // facebook login
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text ("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle ()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor (.gray)
                HStack {
                    Image("facebook-icon")
                        .resizable()
                        .frame (width: 20, height: 20)
                    Text("Continue with Facebook" )
                        .font (. footnote)
                        .fontWeight(.semibold)
                        .foregroundColor (Color (.systemBlue))
                }
                .padding (.top, 8)
                
                Spacer()
                // sign up link
                Divider()
                NavigationLink{
                    Text ("Sign up View")
                } label: {
                    HStack(spacing: 3) {
                        Text ("Don't have an account?")
                        Text ("Sign Up")
                            .fontWeight (.semibold)
                    }
                    .font (.footnote)
                }
                .padding(.vertical)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
