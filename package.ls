#!/usr/bin/env lsc -cj
autho:
  name: ['Chia-liang Kao']
  email: 'clkao@clkao.org'
name: 'twlyparser'
description: 'Parse TW Congress log'
version: '0.0.3'
repository:
  type: 'git'
  url: 'git://github.com/g0v/twlyparser.git'
scripts:
  'shot:calendar': "gulp --require LiveScript shot:calendar"
  test: "mocha"
  'test:calendar': "mocha -g 'ly calendar'"
  prepublish: """
    lsc -cj package.ls &&
    lsc -cb -o lib src
  """
  postinstall: """
    lsc -cj package.ls &&
    lsc -cb -o lib src
  """
main: 'lib/ly.js'
engines:
  node: '0.8.x'
  npm: '1.1.x'
dependencies:
  LiveScript: ">= 1.1.1"
  optimist: \0.3.x
  cheerio: \0.10.x
  request: \2.12.x
  q: \0.8.7
  mkdirp: \0.3.x
  marked: \0.3.2
  shelljs: \0.1.x
  execSync: \0.0.x
  xregexp: \2.0.x
  async: \0.1.x
  printf: \0.0.7
  qs: \1.2.x
  'js-yaml': \2.0.x
  zhutil: \0.5.x
devDependencies:
  mocha: \1.14.x
  chai: \1.8.x
  yamljs: \0.1.5
  gulp: \~3.5.0
  'gulp-util': \3.0.0
  through: \2.3.4
  buffer: \2.5.0
  colors: \0.6.2
  'prelude-ls': \1.1.1
  nock: \0.43.0

optionalDependencies: {}
