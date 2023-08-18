//
//  Theme.swift
//  StyleGuide
//
//  Created by Phong Vo on 14/08/2023.
//

import SwiftUI

public class Theme: ObservableObject, Decodable {

    public enum CodingKeys: String, CodingKey {
        case primaryColor = "primary_color"
        case secondaryColor = "secondary_color"
        case errorColor = "error_color"
    }

    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        // TODO: this just for debugging, need an extension to convert these string to SwiftUI.Color and set them to Color type instance below
        primaryColorStr = try container.decode(String.self, forKey: .primaryColor)
        secondaryColorStr = try container.decode(String.self, forKey: .secondaryColor)
        errorColorStr = try container.decode(String.self, forKey: .errorColor)

        // Just for testing
        primaryColor = .white
        secondaryColor = .white
        errorColor = .white
    }

    // TODO: this just for debugging, need an extension to convert these string to SwiftUI.Color and set them to Color type instance below
    public var primaryColorStr: String = ""
    public var secondaryColorStr: String = ""
    public var errorColorStr: String = ""

    @Published public var primaryColor: Color
    @Published public var secondaryColor: Color
    @Published public var errorColor: Color

    init(primaryColor: Color, secondaryColor: Color, errorColor: Color) {
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.errorColor = errorColor
    }
}

extension Theme {

    static let `default` = Theme(
        primaryColor: .black, secondaryColor: .black.opacity(0.5), errorColor: .red
    )
}
