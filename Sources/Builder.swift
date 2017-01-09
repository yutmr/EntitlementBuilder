//
//  Builder.swift
//  EntitlementBuilder
//
//  Created by Yu Tamura on 2017/01/10.
//  Copyright © 2017 yutmr. All rights reserved.
//

import Foundation

final class Builder {

    private static let entitlementName = "BuildedEntitlement.plist"

    private init() {
    }

    public static func build(entitlement: Entitlement, path: String) {
        var data: [String: Any] = [
            "aps-environment": entitlement.environment.rawValue
        ]

        let file = path + entitlementName
        NSDictionary(dictionary: data).write(toFile: file, atomically: true)
    }
}
