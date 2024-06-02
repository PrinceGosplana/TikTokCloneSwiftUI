//
//  RegisterView.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 01.06.2024.
//

import SwiftUI

struct RegisterView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            
            Spacer()
            
            // logo image
            Image(.tiktokAppIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            // text fields
            VStack {
                TextField("Enter your email", text: $email)
                    .modifier(StandardTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(StandardTextFieldModifier())

                TextField("Enter your full name", text: $fullName)
                    .modifier(StandardTextFieldModifier())

                TextField("Enter your user name", text: $userName)
                    .modifier(StandardTextFieldModifier())
            }
            .textInputAutocapitalization(.never)

            Button {

            } label: {
                Text("Login")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.vertical)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1 : 0.7)

            Spacer()

            Divider()

            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")

                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .padding(.vertical)
            }
        }
        .navigationBarBackButtonHidden()
    }
}

// MARK: - AuthenticationFormProtocol

extension RegisterView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        !email.isEmpty &&
        email.contains("@") &&
        !password.isEmpty &&
        !fullName.isEmpty &&
        !userName.isEmpty
    }
}

#Preview {
    RegisterView()
}
