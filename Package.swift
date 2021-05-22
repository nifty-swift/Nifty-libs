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
            providers: [
                .apt(["gfortran liblapack3", "liblapacke", "liblapacke-dev"]),
                .brew(["homebrew/dupes/lapack"])
            ]
        ),
        .systemLibrary(
            name: "CBlas",
            providers: [
                .apt(["libopenblas-base", "libopenblas-dev"]),
                .brew(["homebrew/science/openblas"])
            ]
        )
    ]
)