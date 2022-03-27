using MyWorkflow
using Documenter

DocMeta.setdocmeta!(MyWorkflow, :DocTestSetup, :(using MyWorkflow); recursive=true)

makedocs(;
    modules=[MyWorkflow],
    authors="sakurairihito <sakurairihito@gmail.com> and contributors",
    repo="https://github.com/Sakurairihito/MyWorkflow.jl/blob/{commit}{path}#{line}",
    sitename="MyWorkflow.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Sakurairihito.github.io/MyWorkflow.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Sakurairihito/MyWorkflow.jl",
    devbranch="main",
)
