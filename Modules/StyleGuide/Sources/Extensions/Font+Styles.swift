//
//  Font.swift
//  StyleGuide
//
//  Created by Phong Vo on 11/08/2023.
//

import SwiftUI

extension Font {

    public enum Style: CGFloat {

        /// 36.0
        case h1 = 36.0

        /// 32.0
        case h2 = 32.0

        /// 28.0
        case h3 = 28.0

        /// 24.0
        case title = 24.0

        /// 20.0
        case body = 20.0
    }

    /// Primary font is Neuzeit
    public enum Primary: CaseIterable {

        case regular
        case bold

        var name: String {
            switch self {
            case .regular:
                return "NeuzeitSLTStd-Book"
            case .bold:
                return "NeuzeitSLTStd-BookHeavy"
            }
        }

        public func callAsFunction(style: Style) -> Font {
            let size = style.rawValue
            return custom(name, fixedSize: size)
        }

        static func registerFonts() {
            guard let bundle = Bundle.resourceBundle else { return }
            Font.Primary.allCases
                .map { $0.name }
                .forEach { registerFont(withName: $0, fontExtension: "otf", in: bundle) }
        }
    }

    fileprivate static func registerFont(withName fontName: String, fontExtension: String, in bundle: Bundle) {
        guard let fontUrl = bundle.url(forResource: fontName, withExtension: fontExtension),
              let provider = CGDataProvider(url: fontUrl as CFURL),
              let font = CGFont(provider) else {
            return print("Unable to load up font", fontName)
        }
        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterGraphicsFont(font, &error)
        if !success {
            print("Unable to register", fontName, "due to", error as Any)
        }
    }
}
