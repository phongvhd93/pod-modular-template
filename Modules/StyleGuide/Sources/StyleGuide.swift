//
//  StyleGuide.swift
//  StyleGuide
//
//  Created by Phong Vo on 13/08/2023.
//

import Foundation
import SwiftUI

public protocol StyleGuideProtocol: AnyObject {

    static var shared: StyleGuideProtocol { get }
    var currentTheme: Theme { get }

    /// Register custom fonts in the package
    /// Call it when app launch in the init function off App or AppDelegate
    func setUp(jsonData: Data?)

    // Another approach
    func setUp(filePath: String?)
}


public final class StyleGuide: NSObject, StyleGuideProtocol {

    public static let shared: StyleGuideProtocol = StyleGuide()

    public var currentTheme: Theme = .default

    public func setUp(jsonData: Data?) {
        guard let jsonData = jsonData else { return }
        do {
            let value = try JSONDecoder().decode(Theme.self, from: jsonData)
            currentTheme = value
        } catch {
            print("Theme error => \(error.localizedDescription)")
        }
    }

    // Another approach
    public func setUp(filePath: String?) {
        guard let filePath = filePath else { return }
        do {
            var data: Data
            if #available(iOS 16.0, *) {
                data = try Data(contentsOf: URL(filePath: filePath), options: .mappedIfSafe)
            } else {
                data = try Data(contentsOf: URL(fileURLWithPath: filePath), options: .mappedIfSafe)
            }
            let value = try JSONDecoder().decode(Theme.self, from: data)
            currentTheme = value
        } catch {
            print("Theme error => \(error.localizedDescription)")
        }
    }
}
