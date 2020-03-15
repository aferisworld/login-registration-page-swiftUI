//
//  LoginSectionView.swift
//  myLoginPageSwiftUI
//
//  Created by Nana Aferi on 15/03/2020.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import SwiftUI

struct LoginSectionView: View {
    @State var activeButton:String!
   
    
    func setUPLoginButton() -> some View {
        return Button(action: {self.onLoginClicked()}) {
            Text("LOGIN")
                .font(.title)
                .foregroundColor((activeButton == "login") ? Color.red : Color.white)
                .frame(maxWidth: .greatestFiniteMagnitude)
                .padding([.top, .bottom], 25)
               //.border(Color.white, width: 10)
        }
        .background((activeButton == "login") ? Color.white : Color.red)
    }
    
    func setUpRegisterButton() -> some View {
        return Button(action: {self.onRegisterClicked()}) {
            Text("REGISTER")
                .font(.title)
                .foregroundColor((activeButton == "login") ? Color.white : Color.red)
                .frame(maxWidth: .greatestFiniteMagnitude)
                .padding([.top, .bottom], 25)
                //.border(Color.white, width: 10)
        }
        .background((activeButton == "login") ? Color.red : Color.white)
        
        
    }
    
    var body: some View {
        
        VStack(spacing: 50) {
            HStack(spacing: 0) {
                setUPLoginButton()
                Spacer()
                setUpRegisterButton()
                  
            }
            if activeButton == "login" {
                displayLoginContentView()
            }else {
                displayRegisterContentView()
            }
        }

       
    }
     
    func onLoginClicked() {
         activeButton = "login"
        
    }
    
    func onRegisterClicked() {
        activeButton = "register"
        
    }
    
    //MARK:- Display login content
    func displayLoginContentView() -> some View {
    return VStack{
              Text("Text")
              
          }
        
    }
    
    
    
    //MARK:- Display register content
    func displayRegisterContentView()  -> some View {
      
        return VStack(spacing: 10){
                
                Button(action: {}) {
                    Text("LOGIN WITH FACEBOOK")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .padding(25)
                }.background(Color.blue)
                
                Text("OR").bold()
                
                Button(action: {}) {
                    Text("CREATE AN ACCOUNT")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .padding(25)
                }.background(Color.red)
                
                VStack {
                    Text("By signing in you agree to our").font(.subheadline).multilineTextAlignment(.center)
                    
                    HStack {
                        Text("Terms of service").font(.subheadline).underline().multilineTextAlignment(.center)
                        Text("and").font(.subheadline).multilineTextAlignment(.center)
                        Text("Privacy policy").font(.subheadline).underline().multilineTextAlignment(.center)
                    }
                   
                }
               
                
            }
    }
    
}

struct LoginSectionView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSectionView(activeButton: "login")
    }
}
