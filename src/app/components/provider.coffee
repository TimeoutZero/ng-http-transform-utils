
angular.module 'ngHttpTransformUtils.factories'
  .provider 'ngHttpTransformUtils', ($httpProvider) ->

    ###*
     * API
    ###
    API = {
      appendTransform: (defaults, transform) ->
        defaults = angular.copy(defaults)

        # We can't guarantee that the default transformation is an array
        defaults = if angular.isArray(defaults) then defaults else [defaults]

        # Append the new transformation to the defaults
        return defaults.concat(transform)

      appendTransformRequest: (newTransform) ->
        API.appendTransform $httpProvider.defaults.transformRequest, (value) ->
          newTransform(value)

      appendTransformResponse: (newTransform) ->
        API.appendTransform $httpProvider.defaults.transformResponse, (value) ->
          newTransform(value)
    }


    ###*
     * Config Methods
    ###
    angular.extend @, API


    @$get = [() ->
      return API
    ]

    return @
