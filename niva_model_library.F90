module niva_model_library

   use fabm_types, only: type_base_model_factory,type_base_model

   implicit none

   private

   type,extends(type_base_model_factory) :: type_factory
      contains
      procedure :: create
   end type

   type (type_factory),save,target,public :: niva_model_factory

contains

   subroutine create(self,name,model)

      use fabm_niva_brom_calcium
      use fabm_niva_brom_carbon
      use fabm_niva_brom_eq_constants
      use fabm_niva_brom_methane
      use fabm_niva_brom_pH
      use fabm_niva_brom_bubble
      use fabm_niva_oxydep
      use fabm_niva_light

      ! Add new NIVA models here

      class (type_factory),intent(in) :: self
      character(*),        intent(in) :: name
      class (type_base_model),pointer :: model

      select case (name)
         case ('brom_calcium');       allocate(type_niva_brom_calcium::model)
         case ('brom_carbon');        allocate(type_niva_brom_carbon::model)
         case ('brom_eq_constants');  allocate(type_niva_brom_eq_constants::model)
         case ('brom_methane');       allocate(type_niva_brom_methane::model)
         case ('brom_pH');            allocate(type_niva_brom_pH::model)
         case ('brom_bubble');        allocate(type_niva_brom_bubble::model)
         case ('oxydep');             allocate(type_niva_oxydep::model)
         case ('light');              allocate(type_niva_light::model) 

         ! Add new NIVA models here
      end select

   end subroutine

end module
