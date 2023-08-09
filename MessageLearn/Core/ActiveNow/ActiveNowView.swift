//
//  ActiveNowView.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 32) {
                ForEach(0 ... 10, id: \.self) { user in
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
                            
                            ZStack {
                                Circle()
                                    .fill (.white)
                                    .frame (width: 18, height: 18)
                                Circle()
                                    .fill(Color (.systemGreen))
                                    .frame(width: 12, height: 12)
                            }
                        }
                        Text("Bruce")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding()
        }
        .frame(height: 106)
    }
}

struct ActiveNowView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveNowView()
    }
}
