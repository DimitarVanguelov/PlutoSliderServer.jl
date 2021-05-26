import PlutoSliderServer

just_run_test_server = false
ENV["JULIA_DEBUG"] = PlutoSliderServer

if just_run_test_server
    include("./runtestserver.jl")
else
    ENV["HIDE_PLUTO_EXACT_VERSION_WARNING"] = "true"
    include("./filewatching.jl")
    include("./static export.jl")
    include("./staterequest.jl")
    include("./connections.jl")
end