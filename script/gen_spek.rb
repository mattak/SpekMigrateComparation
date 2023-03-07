#!/usr/bin/env ruby

require 'fileutils'

def generate(outputDirectory, i)
  name = format("Sample%03dTest", i)
  content = <<__FILE__
package me.mattak.spekmigratecomparation.generate

import org.junit.Assert
import org.spekframework.spek2.Spek
import org.spekframework.spek2.style.gherkin.Feature
import org.spekframework.spek2.style.specification.describe

object #{name} : Spek({
    Feature("加減算") {
        Scenario("addition_isCorrect") {
            Then("正しい") {
                Assert.assertEquals(4, 2 + 2)
            }
        }
    }
})
__FILE__
  filepath = "#{outputDirectory}/#{name}.kt"
  File.write(filepath, content)
  puts filepath
end


if ARGV.size < 1
  puts "usage: <size>"
  exit 1
end

n = ARGV[0].to_i

outputDirectory = "app_spek/src/test/java/me/mattak/spekmigratecomparation/generate"

if Dir.exist?(outputDirectory)
  FileUtils.rm_rf(outputDirectory)
end

Dir.mkdir(outputDirectory)

(1..n).each do |i|
  generate(outputDirectory, i)
end
