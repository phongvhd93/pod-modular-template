//
//  ThemeName.swift
//  StyleGuide
//
//  Created by Phong Vo on 14/08/2023.
//

public enum ThemeType {

    case `default`
    case light
    case dark

    static var themes: [Theme] = []

    public var theme: Theme {
        switch self {
        case .default:
            return .default
        case .light:
            return .default
        case .dark:
            return .default
        }
    }

//    public func updateTheme(with theme: Theme) {
//        guard let index = ThemeType.themes.firstIndex(where: { $0.themeType == theme.themeType }) else {
//            ThemeType.themes.append(theme)
//            return
//        }
//        ThemeType.themes[index] = theme
//    }
}
