add_library(fabm_models_niva OBJECT
            niva_model_library.F90
            oxydep_carb/brom_calcium.F90
            oxydep_carb/brom_carbon.F90
            oxydep_carb/brom_eq_constants.F90
            oxydep_carb/brom_methane.F90
            oxydep_carb/brom_pH.F90
            oxydep_carb/brom_bubble.F90
            oxydep_carb/oxydep.F90
            oxydep_carb/light.F90
           )

add_dependencies(fabm_models_niva fabm_base)

#-----------------------------------------------------------------------
# Copyright (C) 2014 - Karsten Bolding and Jorn Bruggeman (BB)         !
#-----------------------------------------------------------------------
