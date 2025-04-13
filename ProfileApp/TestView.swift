//
//  TestView.swift
//  ProfileApp
//
//  Created by Subham Patel on 13/04/25.
//

import SwiftUI

struct TestView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var showAlert: Bool = false
    var body: some View {
        VStack{
            Text("Login Screen")
                .padding()
            
            TextField("Enter your username", text: $username)
                .padding()
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                )
                .padding()
            
           SecureField("Enter the password", text: $password)
                .padding()
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                )
                .padding()
            
            Button("Submit"){
                showAlert = true
            }
            .frame(width: 120, height: 50)
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .alert("Alert Message", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text("This is an alert message.")
            }
        }
    }
}

#Preview {
    TestView()
}
