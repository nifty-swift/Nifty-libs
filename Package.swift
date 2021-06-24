// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Nifty-libs",
    products: [
      .library(name: "CLapacke", targets: ["CLapacke"]),
      .library(name: "CBlas", targets: ["CBlas"])
    ],
    
    targets: [
        .systemLibrary(
            name: "CLapacke",
            pkgConfig: "lapacke",
            providers: [
                .brew(["lapack"]),
                .apt(["gfortran", "liblapack3", "liblapacke", "liblapacke-dev"]),
            ]
        ),
        .systemLibrary(
            name: "CBlas",
            pkgConfig: "openblas",
            providers: [
                .brew(["openblas"]),
                .apt(["libopenblas-base", "libopenblas-dev"])
            ]
        ),
    ]
)
