#!/usr/bin/env bash
set -e
source /etc/profile.d/chruby-with-default-ruby.sh

cd fruits

echo 'executing tests to check apple quality/quantity'

ruby -r yaml -e"
  load_apple= YAML.load_file('apple.yml')
  if (load_apple['number']<200) || (load_apple['color'] != 'red')
    raise 'bad bad very bad apple !!!!'
  end
  puts 'good apple'
"
