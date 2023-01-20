// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BBMetalImage",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "BBMetalImage", targets: ["BBMetalImageSwift", "BBMetalImageObjC", "BBMetalImageMetal"]),
    ],
    targets: [
        .target(
            name: "BBMetalImageSwift",
            path: "BBMetalImage/BBMetalImage/BBMetalImageSwift",
            exclude: ["MultipleVideoSource.swift"]
        ),
        .target(
            name: "BBMetalImageObjC",
            path: "BBMetalImage/BBMetalImage/BBMetalImageObjC"
        ),
        .target(
            name: "BBMetalImageMetal",
            path: "BBMetalImage/BBMetalImage/BBMetalImageMetal"
        )
    ]
)
