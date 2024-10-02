//
//  OnboardingView.swift
//  ToDoList_iOS
//
//  Created by macOS on 1/10/24.
//

import SwiftUI


struct OnboardingView: View {
    var body: some View {
        NavigationView {
        
            ZStack (alignment: .topLeading){
                VStack{
                    Image("onboard_bg")
                        .aspectRatio(contentMode: .fit).offset(x:0, y:0)
          
                }
                VStack {
                    Image("onboarding")
                        .resizable()
                        .aspectRatio(contentMode: .fit).padding([.bottom, ], 43)
                    Text("Get things done with ToDo")
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing. Maxime, tempore! Animi nemo aut atque, deleniti nihil dolorem repellendus."
                    )
                    .multilineTextAlignment(.center)
                    .padding(
                        EdgeInsets.init(top: 18, leading: 50, bottom: 0, trailing: 50)
                    )
                    .font(.system(.footnote))
                    NavigationLink(destination: LoginView()                                                           .navigationBarBackButtonHidden(true)
                    ) {
                        Text("Get Started")
                            .padding(EdgeInsets.init(top: 12, leading: 50, bottom: 12, trailing: 50))
                            .frame(maxWidth: .infinity)
                            .tint(.blue)
                            .font(.footnote)
                            .foregroundStyle(.white)
                            .background(Color(hex: 0x55847A))
                            .cornerRadius(0)
                    }.padding([.leading,.trailing, .top], 60)
                    Spacer()
                }.padding([.top], 150).frame(maxWidth: .infinity)

            }.ignoresSafeArea()
           
      
           
        }
     
    }
}

#Preview {
    OnboardingView()
}
