//
//  LoginScreen.swift
//  Alamofire
//
//  Created by Phong Vo on 14/08/2023.
//

import SwiftUI
import StyleGuide

public struct LoginScreen: View {
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, This is Authentication module!")
                .font(Font.Primary.bold(style: .title))
        }
        .padding()
    }
}
