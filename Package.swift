//
//  Package.swift
//  EntitlementBuilder
//
//  Created by Yu Tamura on 1/1/17.
//  Copyright © 2017 Yu Tamura. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "EntitlementBuilder",
    dependencies: [
        .Package(
            url: "git@github.com:ikesyo/Himotoki.git",
            versions: Version(3, 0, 0)..<Version(3, .max, .max)
        ),
        .Package(
            url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
            versions: Version(3, 0, 0)..<Version(3, .max, .max)
        )
    ]
)
