angular.module('tlm').config [
  '$urlRouterProvider', '$stateProvider',
  ($urlRouterProvider, $stateProvider) ->
    $urlRouterProvider.otherwise('/')

#  library = ->
#    name: 'bleh',
#    url: '/',
#    templateUrl: '/application/_library-table.html',
#    controller: 'Library as self'

    $stateProvider.state 'index',
    url: '/',
    templateUrl: '/templates/library-table.html',
    controller: 'Library as self'
]