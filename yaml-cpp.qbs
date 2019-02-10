import qbs 1.0

StaticLibrary {
    name: "yaml-cpp"

    Depends { name: 'cpp' }

    cpp.cxxLanguageVersion: ["c++11", "c++14"]
    cpp.minimumMacosVersion: "10.12"

    cpp.includePaths: [path+"/include"]

    files: [
        "src/*",
        "src/contrib/*",
        "include/yaml-cpp/*"
    ]

    Export {
        Depends { name: "cpp" }
        cpp.includePaths: [path+"/include"]
    }
}
