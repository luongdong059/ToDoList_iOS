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

        NavigationView {

            ZStack(alignment: .topLeading) {
                VStack {
                    Image("onboard_bg")
                        .aspectRatio(contentMode: .fit)

                }
                VStack {

                    Text("Welcome Back!").fontWeight(.bold)

                    Image("login_bg").resizable().aspectRatio(
                        contentMode: ContentMode.fit
                    ).frame(width: 200)
                    // Ô nhập tài khoản
                    TextField("Enter your Email Address", text: $username)
                        .padding(
                            EdgeInsets.init(
                                top: 10, leading: 10, bottom: 10, trailing: 10)
                        )
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .autocapitalization(.none).font(.footnote).fontWeight(
                            .bold
                        ).tint(Color(.black)).padding([.bottom], 10)
                    HStack {
                        Group{
                            // Ô nhập mật khẩu
                            if isSecure {
                                SecureField("Confirm Password", text: $password)
                                    .padding(
                                        EdgeInsets.init(
                                            top: 10, leading: 10, bottom: 10,
                                            trailing: 10)
                                    )
                                    .background(Color(.systemGray6))
                                    .cornerRadius(10).font(.footnote).fontWeight(
                                        .bold
                                    ).tint(Color(.black))
                            } else {
                                TextField("Confirm Password", text: $password)
                                    .padding(
                                        EdgeInsets.init(
                                            top: 10, leading: 10, bottom: 10,
                                            trailing: 10)
                                    )
                                    .background(Color(.systemGray6))
                                    .cornerRadius(10).font(.footnote).fontWeight(
                                        .bold
                                    ).tint(Color(.black))
                            }
                        }
         
                        Button(action: {
                            isSecure.toggle()
                        }) {
                           
                            Image(
                                systemName: isSecure
                                ? "eye.fill" : "eye.slash.fill").tint(Color(.gray))

                        }
                    }.padding([.bottom], 50)

                    // Nút Đăng nhập
                    Button(
                        action: {
                            // Hành động đăng nhập
                            print(
                                "Đăng nhập với tài khoản: \(username), mật khẩu: \(password)"
                            )
                        },
                        label: {
                            Text("Sign In")
                                .foregroundColor(.white)
                                .padding(
                                    EdgeInsets.init(
                                        top: 12, leading: 50, bottom: 12,
                                        trailing: 50)
                                )
                                .frame(maxWidth: .infinity)
                                .background(Color(hex: 0x55847A))

                        })

                    Button(action: {

                    }) {
                        Text("Dont have an account ? Sign Up")
                            .font(.system(size: 14))
                            .foregroundColor(.blue)
                    }

                    Spacer()
                }.padding(
                    EdgeInsets.init(
                        top: 150, leading: 32, bottom: 0, trailing: 32)
                ).frame(maxWidth: .infinity, maxHeight: .infinity)

            }.ignoresSafeArea()

        }
        //        VStack(spacing: 20) {

        //        }
        //        .padding()
    }
}

#Preview {
    LoginView()
}
