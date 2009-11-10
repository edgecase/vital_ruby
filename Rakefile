#!/usr/bin/env ruby

require 'rake/clean'

DIR_FILE = "vital_ruby"
TAR_FILE = "vital_ruby.tgz"
ZIP_FILE = "vital_ruby.zip"

CLEAN.include(DIR_FILE, TAR_FILE, ZIP_FILE)

file DIR_FILE do
  sh "cp -r labs vital_ruby"
end

task :default => :package

task :package => [TAR_FILE, ZIP_FILE]

file TAR_FILE => ["vital_ruby"] do
  rm TAR_FILE rescue nil
  sh "tar zcvf #{TAR_FILE} #{DIR_FILE}"
end

file ZIP_FILE => ["vital_ruby"] do
  rm ZIP_FILE rescue nil
  sh "zip -r #{ZIP_FILE} #{DIR_FILE}"
end
