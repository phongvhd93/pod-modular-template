import SwiftUI
import StyleGuide

@main
struct ModularAppDemoApp: App {

    init() {
        guard let pathToThemeResource = Bundle.main.path(forResource: "default_theme", ofType: "json") else {
            return
        }
//        do {
//            if #available(iOS 16.0, *) {
//                let data = try Data(contentsOf: URL(filePath: pathToThemeResource), options: .mappedIfSafe)
//                StyleGuide.shared.setUp(jsonData: data)
//            } else {
//                let data = try Data(contentsOf: URL(fileURLWithPath: pathToThemeResource), options: .mappedIfSafe)
//                StyleGuide.shared.setUp(jsonData: data)
//            }
//
//            print("1st approach: \(StyleGuide.shared.currentTheme.errorColorStr)")
//        } catch {
//            print(error.localizedDescription)
//        }

        StyleGuide.shared.setUp(filePath: pathToThemeResource)
        print("2nd approach: \(StyleGuide.shared.currentTheme.errorColorStr)")
    }

    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
