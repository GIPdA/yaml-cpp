import qbs 1.0

StaticLibrary {
    name: "yaml-cpp"
    files: [
        "src/*",
        "src/contrib/*",
        "include/yaml-cpp/*"
    ]
    Depends { name: 'cpp' }

    cpp.cxxLanguageVersion: ["c++11"]
    cpp.includePaths: [path+"/include"]

    Export {
        Depends { name: "cpp" }
        cpp.includePaths: [path+"/include"]
    }
}
