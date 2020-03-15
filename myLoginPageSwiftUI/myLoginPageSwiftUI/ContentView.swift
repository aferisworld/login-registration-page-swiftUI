//
//  ContentView.swift
//  myLoginPageSwiftUI
//
//  Created by Nana Aferi on 15/03/2020.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var activeButton:String = "login"
    var body: some View {
            VStack(spacing: 0)  {
                Image("afterCutOff_foodImage")
                    .resizable()
                    .scaledToFit()
                VStack {
                 LoginSectionView(activeButton: activeButton)
                    Spacer()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
        Group{
        ContentView()
        ContentView()
            //.colorScheme(.dark)
            //.background(Color.black)
            .previewDevice("iPad Pro (9.7-inch)")
    }
}
}
