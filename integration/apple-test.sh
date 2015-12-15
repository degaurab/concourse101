#!/usr/bin/env bash
set -e -x
source /etc/profile.d/chruby-with-default-ruby.sh

cd fruits

ruby -r yaml -e"
  load_apple= YAML.load_file('apple.yml')
  if load_banana['number']<=200 || load_banana['color']!='red'
    raise 'bad bad very bad apple !!!!'
  end
  puts 'good apple'
"
