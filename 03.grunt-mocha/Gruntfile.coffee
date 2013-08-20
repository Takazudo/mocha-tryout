module.exports = (grunt) ->
  
  grunt.task.loadNpmTasks 'grunt-mocha'

  grunt.initConfig

    mocha:
      
      all: [ 'test/**/*.html' ]

      test1:
        src: [ 'test/1/index.html' ]
        bail: true
        log: true
        mocha:
          ignoreLeaks: false
        reporter: 'Nyan'
        run: true

  grunt.registerTask 'default', [
    'mocha'
  ]

