import PackageDescription

let package = Package(
    name: "Nifty-libs",
    providers: [
        .Apt("gfortran liblapack3 liblapacke liblapacke-dev libopenblas-base libopenblas-dev"),
        .Brew("homebrew/dupes/lapack homebrew/science/openblas")
    ]
)