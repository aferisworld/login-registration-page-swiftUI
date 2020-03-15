//
//  LoginSubView.swift
//  myLoginPageSwiftUI
//
//  Created by Nana Aferi on 15/03/2020.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import SwiftUI

struct LoginContentView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LoginContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
               LoginContentView()
               LoginContentView()
                   //.colorScheme(.dark)
                   //.background(Color.black)
                   .previewDevice("iPad Pro (9.7-inch)")
           }
    }
}
