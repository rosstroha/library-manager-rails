angular.module('tlm').controller 'Library',
  ['LibraryService', (LibraryService) ->

    @entireLibrary = ->
      LibraryService.getLibrary().then (result) =>
        console.log result

    @testVar = 'woop'

    return
]