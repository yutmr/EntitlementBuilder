//
//  Entitlement.swift
//  EntitlementBuilder
//
//  Created by Yu Tamura on 2017/01/09.
//  Copyright © 2017 yutmr. All rights reserved.
//

import Foundation
import Himotoki

struct Entitlement {

    enum Environment: String {

        case production = "production"

        case development = "development"
    }

    let environment: Environment
}

// MARK: Decodable
extension Entitlement: Decodable {

    static func decode(_ e: Extractor) throws -> Entitlement {
        return try Entitlement(
            environment: Entitlement.Environment(rawValue: e <| "environment")!
        )
    }
}
