
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name runled -dir "C:/Proj/runled/planAhead_run_2" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Proj/runled/runled_cs.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Proj/runled} }
set_property target_constrs_file "runled.ucf" [current_fileset -constrset]
add_files [list {runled.ucf}] -fileset [get_property constrset [current_run]]
link_design
