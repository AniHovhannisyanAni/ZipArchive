// swift-tools-version:5.10

import PackageDescription

let package = Package(name: "ZipArchive",
                      platforms: [
                          .iOS(.v15),
                      ],
                      products: [
                          .library(
                              name: "ZipArchive",
                              targets: ["ZipArchive"]
                          )
                      ],
                      targets: [
                          .target(
                              name: "ZipArchive",
                              path: "Sources/ZipArchive",
                              sources: [
                                  "ZipArchive.m",
                                  "minizip/ioapi.c",
                                  "minizip/mztools.c",
                                  "minizip/unzip.c",
                                  "minizip/zip.c"
                              ],
                              publicHeadersPath: ".",
                              cSettings: [
                                  .define("unix"),
                              ],
                              linkerSettings: [
                                  .linkedLibrary("z"),
                              ]
                          )
                      ])
