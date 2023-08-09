//
//  AuthService.swift
//  MessageLearn
//
//  Created by lemonshark on 2023/8/8.
//

import Foundation
import Firebase

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
        print("DEBUG: User session id is \(userSession?.uid)")
    }
    
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print ("DEBUG: Failed to sign in user with error \(error.localizedDescription)")
        }
    }
    
    func createUser (withEmail email: String, password: String, fullname: String) async throws{
        print("DEBUG: Fullname is \(fullname)")
        print("DEBUG: Email is \(email)")
        print("DEBUG: Password is \(password)")
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print ("DEBUG: Create user \(result.user.uid)")
        } catch {
            print ("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut () // signs out on backend
            self.userSession = nil // updates routing logic
        } catch {
            print ("DEBUG: Failed to sign out with error \(error.localizedDescription)")
        }
    }
}
