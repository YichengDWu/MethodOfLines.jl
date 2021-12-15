module MethodOfLines
    using LinearAlgebra
    using SciMLBase
    using DiffEqBase
    using ModelingToolkit
    using SymbolicUtils, Symbolics
    import DomainSets

    include("MOL_utils.jl")
    include("discretization/fornberg.jl")
    include("discretization/discretize_vars.jl")
    include("equation_types.jl")
    include("discretization/generate_finite_difference_rules.jl")
    include("bcs/generate_bc_eqs.jl")

    include("discretization/MOL_discretization.jl")

    export MOLFiniteDifference, discretize, symbolic_discretize, grid_align, edge_align, center_align
end