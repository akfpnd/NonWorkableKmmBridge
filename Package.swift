// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/akfpnd/non-workable-kmm-bridge/com/deliveryhero/kmm/public/allshared-kmmbridge/0.1.0.2/allshared-kmmbridge-0.1.0.2.zip"
let remoteKotlinChecksum = "f57a7ed7d5b913d1a4b8dc63d762ad76681bf632e68769ae42cd9be0d3594c7a"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)