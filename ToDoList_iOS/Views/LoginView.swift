//
//  Login.swift
//  ToDoList_iOS
//
//  Created by macOS on 18/9/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            // Ô nhập tài khoản
            TextField("Tài khoản", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .autocapitalization(.none)
            
            // Ô nhập mật khẩu
            if isSecure {
                SecureField("Mật khẩu", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
            } else {
                TextField("Mật khẩu", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
            }
            
            // Nút hiện/ẩn mật khẩu
            Button(action: {
                isSecure.toggle()
            }) {
                Text(isSecure ? "Hiện mật khẩu" : "Ẩn mật khẩu")
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
            }
            
            // Nút Đăng nhập
            Button(action: {
                // Hành động đăng nhập
                print("Đăng nhập với tài khoản: \(username), mật khẩu: \(password)")
            }) {
                Text("Đăng nhập")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
