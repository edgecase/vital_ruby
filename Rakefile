#!/usr/bin/env ruby

require 'rake/clean'

CLEAN.include("vital_ruby")

TAR_FILE = "vital_ruby.tgz"
ZIP_FILE = "vital_ruby.zip"

file "vital_ruby" do
  sh "cp -r labs vital_ruby"
end

task :default => [TAR_FILE, ZIP_FILE]

file TAR_FILE => ["vital_ruby"] do
  rm TAR_FILE rescue nil
  sh "tar zcvf #{TAR_FILE} #{DIR_FILE}"
end

file ZIP_FILE => ["vital_ruby"] do
  rm ZIP_FILE rescue nil
  sh "zip -r #{ZIP_FILE} #{DIR_FILE}"
end
