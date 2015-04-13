require 'spec_helper'

describe SimplecovSample do
  subject { SimplecovSample::Sample.new("hoge") }

  describe "#test1" do
    it "" do
      expect(subject.test1()).to eq "test1"
    end
  end

  describe "#test_proc1" do
    it "" do
      expect(subject.test_proc1()).to eq "test_proc1"
    end
  end

  describe "#test4" do
    it "" do
      expect(subject.test4()).to eq "test4"
    end
  end

  describe "#name" do
    it "" do
      expect(subject.name).to eq "hoge"
    end
  end

  describe "#name2" do
    it "" do
      expect(subject.name2(true)).to eq "HOGE"
    end
  end

  describe "#name3" do
    it "" do
      expect(subject.name3(false)).to eq "hoge"
    end
  end

  describe "#name4" do
    it "" do
      expect(subject.name4(2)).to eq "hogehoge"
    end
  end

  describe "#mapped" do
    it "" do
      expect(subject.mapped([])).to eq []
    end
  end

  describe "#mapped2" do
    it "" do
      expect(subject.mapped2([])).to eq []
    end
  end
end
