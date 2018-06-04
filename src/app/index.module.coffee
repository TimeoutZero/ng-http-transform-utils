# =============================================
# Modules
# =============================================
# angular.module 'ngHttpTransformUtils.controllers' , []
# angular.module 'ngHttpTransformUtils.filters'     , []
angular.module 'ngHttpTransformUtils.factories'   , []
angular.module 'ngHttpTransformUtils.services'    , []
angular.module 'ngHttpTransformUtils.constants'   , []
# angular.module 'ngHttpTransformUtils.directives'  , []
# angular.module 'ngHttpTransformUtils.mocks'       , []
# angular.module 'ngHttpTransformUtils.providers'   , []



# =============================================
# Scripts Module
# =============================================
angular.module 'ngHttpTransformUtils.scripts'     , [
  # 'ngHttpTransformUtils.controllers'
  # 'ngHttpTransformUtils.filters'
  'ngHttpTransformUtils.factories'
  'ngHttpTransformUtils.services'
  'ngHttpTransformUtils.constants'
  # 'ngHttpTransformUtils.directives'
  # 'ngHttpTransformUtils.mocks'
  # 'ngHttpTransformUtils.providers'
]


# =============================================
# Main Module
# =============================================
angular.module 'ngHttpTransformUtils', [
  'ngSanitize'
  'ngResource'
  'ngHttpTransformUtils.scripts'
]