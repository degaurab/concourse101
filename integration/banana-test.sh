#!/usr/bin/env bash
set -e -x
source /etc/profile.d/chruby-with-default-ruby.sh

cd fruits

ruby -r yaml -e"
  load_banana = YAML.load_file('banana.yml')
  if load_banana['no']<=100 || load_banana['color']!='yellow'
    raise 'bad bad very bad banana !!!!'
  end
  puts 'good banana'
"
