# This is a manifest file that'll be compiled into including all the files listed below.
# Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
# be included in the compiled file accessible from http://example.com/assets/application.js
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
#= require jquery2
#= require jquery-ujs
#= require angular/angular
#= require angular-ui-router
#= require angular-material
#= require angular-animate
#= require angular-aria
#= require underscore
#= require ng-file-upload
#= require foundation
#= require current_user
#= require traktor-library-manager

# µ can be typed on a Mac with option-m
window.µ = (key) -> ((object) -> object[key])

window.path_fn = (path) ->
  (start_obj) ->
    return start_obj if path is ''
    _(path.split('.')).reduce ((obj, part) -> obj[part]), start_obj

if !String::splice

  ###*
  # {JSDoc}
  #
  # The splice() method changes the content of a string by removing a range of
  # characters and/or adding new characters.
  #
  # @this {String}
  # @param {number} start Index at which to start changing the string.
  # @param {number} delCount An integer indicating the number of old chars to remove.
  # @param {string} newSubStr The String that is spliced in.
  # @return {string} A new string with the spliced substring.
  ###

  String::splice = (start, delCount, newSubStr) ->
    @slice(0, start) + newSubStr + @slice(start + Math.abs(delCount))

$(document).foundation()