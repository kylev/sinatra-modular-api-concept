#!/usr/bin/env ruby

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bundler/setup'
require 'rack'
require 'honeybadger'

Honeybadger.start

require 'franky'
run Franky::Root
