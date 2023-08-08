//
//  ProfileView.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame (width: 80, height: 80)
                    .foregroundColor(Color (.systemGray4) )
                Text ("Bruce Wayne")
                    .font (.title2)
                    .fontWeight(.semibold)
            }
            // list
            List {
                Section {
                    ForEach (0 ... 5, id: \.self) { option in
                        HStack {
                            Image(systemName: "bell.circle.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color (.systemPurple))
                            Text ("Notifications")
                                .font(.subheadline)
                        }
                    }
                }
                Section {
                    Button ("Log Out") {
                        
                    }
                    
                    Button ("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
