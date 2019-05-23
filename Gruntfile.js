module.exports = function (grunt) {
    grunt.initConfig({

        appFolder: 'app/',
        distFolder: 'dist/',
        nodeFolder: 'node_modules/',

        clean: ['<%= appFolder %>css/', '<%= appFolder %>assets/css/'],

        sass: {
            development: {
                options: {
                    style: 'expanded',
                    lineNumber: true
                },
                files: [{
                    expand: true,
                    cwd: '<%= appFolder %>sass/',
                    src: '*.scss',
                    dest: '<%= appFolder %>css/',
                    ext: '.css'
                }]
            }
        },

        copy: {
            main: {
                files: [
                    {src: ['<%= nodeFolder %>bootstrap/dist/css/bootstrap.css'], dest: '<%= appFolder %>assets/css/bootstrap.css'},
                    {expand: true, cwd: '<%= nodeFolder %>bootstrap/dist/', src: ['themes/default/**'], dest: '<%= appFolder %>assets/css/'}
                ]
            }
        },

        rtlcss: {
            development: {
                files: {
                    '<%= appFolder %>assets/css/bootstrap-rtl.css': '<%= nodeFolder %>bootstrap/dist/css/bootstrap.css',
                    '<%= appFolder %>css/styles-rtl.css': '<%= appFolder %>css/styles.css'
                }
            },
            watch: {
                files: {
                    '<%= appFolder %>css/styles-rtl.css': '<%= appFolder %>css/styles.css'
                }
            }
        },

        watch: {
            css: {
                files: ['<%= appFolder %>sass/**/*.scss'],
                tasks: ['sass:development', 'rtlcss:watch']
            }
        }

    });

    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-rtlcss');
    grunt.loadNpmTasks('grunt-contrib-copy');

    grunt.registerTask('server', ['clean', 'rtlcss:development', 'copy', 'watch']);
};
