module.exports = (grunt) ->
  
  grunt.task.loadTasks 'gruntcomponents/tasks'
  grunt.task.loadNpmTasks 'grunt-contrib-coffee'
  grunt.task.loadNpmTasks 'grunt-contrib-watch'
  grunt.task.loadNpmTasks 'grunt-mocha'

  grunt.initConfig

    growl:

      ok:
        title: 'COMPLETE!!'
        msg: '＼(^o^)／'

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

      test2:
        src: [ 'test/2/index.html' ]
        bail: true
        log: true
        mocha:
          ignoreLeaks: false
        reporter: 'Nyan'
        run: true

    coffee:
      
      test1:
        src: [ 'test/1/test.array.coffee' ]
        dest: 'test/1/test.array.js'
      test2:
        src: [ 'test/2/test.array.coffee' ]
        dest: 'test/2/test.array.js'

    watch:

      test1:
        files: '<%= coffee.test1.src %>'
        tasks: [
          'coffee:test1'
          'mocha:test1'
        ]
      test2:
        files: '<%= coffee.test2.src %>'
        tasks: [
          'coffee:test2'
          'mocha:test2'
        ]

  grunt.registerTask 'default', [
    'coffee'
    'mocha:all'
    'growl:ok'
  ]

