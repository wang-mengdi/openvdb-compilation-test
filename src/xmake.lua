add_rules("mode.debug","mode.release")
add_requires("openvdb =9.1.0",{configs={nanovdb=false}})
target("openvdb-compilation-test")
    add_rules("plugin.vsxmake.autoupdate")
    set_kind("binary")
    add_headerfiles("*.h")
    add_files("*.cpp","*.cu","*.cxx","*.cc")
    add_includedirs(".",{public=true})
    add_cugencodes("native","compute_61")
    add_cuflags("-extended-lambda --std c++17")
    add_cuflags("-Xcompiler /bigobj")
    add_packages("openvdb",{public=true})
