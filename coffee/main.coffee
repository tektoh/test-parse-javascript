require.config
  baseUrl: '/js'
  paths:
    'jquery': '//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min'
    'bootstrap': '//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min'
    'angular': '//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.0/angular.min'
    'angularRoute': '//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.0/angular-route.min'
    'parse': '//www.parsecdn.com/js/parse-1.3.2.min'
  shim:
    'jquery':
      exports: '$'
    'bootstrap':
      deps: ['jquery']
    'angular':
      deps: ['jquery']
      exports: 'angular'
    'angularRoute':
      deps: ['angular']
    'parse':
      deps: ['jquery']
      exports: 'Parse'

require [
  'angular'
  'parse'
  'app'
], (angular, Parse)->
  Parse.initialize 'XwLbQ61ObP0LPjYnvzBXBqAfLqHw9OVcaJ3MvVEq', 'upWNjq5jj8zagQ6QJioMurjsJmR68eBNr7LiGRa5'
  angular.bootstrap document, ['app']