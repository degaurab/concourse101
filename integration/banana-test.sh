#!/usr/bin/env bash
set -e -x
source /etc/profile.d/chruby-with-default-ruby.sh

cd fruits

echo 'Name of the repo:'
pwd

echo 'List of files in repo'
ls -l

echo 'executing tests to check banana quality/quantity'

ruby -r yaml -e"
  load_banana = YAML.load_file('banana.yml')
  if (load_banana['number'] <= 100) || (load_banana['color'] != 'yellow')
    raise 'bad bad very bad banana shipment !!!!'
  end
  puts 'good banana'
"
