$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require "coverage"

Coverage.start

require 'simplecov_sample'
subject = SimplecovSample::Sample.new("hoge")
subject.test1()
subject.test_proc1()
subject.test4()
subject.name
subject.name2(true)
subject.name3(false)
subject.name4(2)
subject.mapped([])
subject.mapped2([])

Coverage.result.each do |key, value|
  value.each_with_index do |val, i|
    p [i + 1, val]
  end
end
