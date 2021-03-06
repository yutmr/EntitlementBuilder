//
//  main.swift
//  EntitlementBuilder
//
//  Created by Yu Tamura on 1/1/17.
//  Copyright © 2017 Yu Tamura. All rights reserved.
//

import Foundation
import Himotoki

private let fileName = "Entitlementfile.json"

private func main(arguments: [String]) {
    let arguments = arguments.dropFirst()
    guard let path = arguments.first, let scheme = arguments.last else {
        print("invalid parameter")
        return
    }

    let entitlement: Entitlement = try! decodeValue(
        parse(path: path),
        rootKeyPath: [scheme]
    )

    Builder.build(entitlement: entitlement, path: path)
}

private func parse(path: String) -> Any {
    let raw = try! String(contentsOfFile: path + fileName)
    let json = try! JSONSerialization.jsonObject(
        with: raw.data(using: .utf8)!,
        options: []
    )
    return json
}

main(arguments: CommandLine.arguments)
