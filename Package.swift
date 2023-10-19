// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/akfpnd/non-workable-kmm-bridge/com/deliveryhero/kmm/public/allshared-kmmbridge/0.1.0.1/allshared-kmmbridge-0.1.0.1.zip"
let remoteKotlinChecksum = "574097001e9919d50c763d7fe3bbbeecf91909eab3b6e6e645ff34b7b34f4ddb"
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