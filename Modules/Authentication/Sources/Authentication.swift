//
//  Authentication.swift
//  Authentication
//
//  Created by Phong Vo on 13/08/2023.
//

import Foundation
import StyleGuide
import SwiftUI

public protocol AuthenticationProtocol: AnyObject {

    var loginScreen: LoginScreen { get }
}

public final class Authentication: NSObject, AuthenticationProtocol {

    public let loginScreen = LoginScreen()
}
