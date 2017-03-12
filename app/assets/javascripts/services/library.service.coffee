angular.module('tlm').service 'LibraryService', [
  '$http', '$q', 'Upload'
  ($http, $q, Upload) ->

    getLibrary: () ->
      $http.get('api/library')
]
