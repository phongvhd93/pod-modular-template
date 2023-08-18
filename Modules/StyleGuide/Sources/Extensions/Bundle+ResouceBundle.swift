//
//  Bundle+ResouceBundle.swift
//  StyleGuide
//
//  Created by Phong Vo on 13/08/2023.
//

import Foundation

extension Bundle {

    static let resourceBundle = Bundle.main
        .url(forResource: "StyleGuide", withExtension: "bundle")
        .flatMap(Bundle.init)
}
