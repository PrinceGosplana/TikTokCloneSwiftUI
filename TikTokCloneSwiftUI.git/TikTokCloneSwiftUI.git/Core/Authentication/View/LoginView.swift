//
//  LoginView.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 01.06.2024.
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
                }
                .textInputAutocapitalization(.never)

                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }

                // login button

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

                Spacer()

                // go to sign up

                Divider()

                NavigationLink {

                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")

                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .padding(.vertical)
                }

            }
        }
    }
}

#Preview {
    LoginView()
}
