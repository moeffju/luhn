require_relative './spec_helper'

describe "Luhn" do
  describe "on Fixnums" do
    let(:valid) { 4100410382 }
    let(:valid_check) { 2 }
    let(:incomplete) { 410041038 }
    let(:invalid) { 4100410383 }

    it "should validate valid luhn codes" do
      valid.luhn?.should be_true
    end

    it "should invalidate invalid luhn codes" do
      invalid.luhn?.should be_false
    end

    it "should calculate the correct luhn check digit" do
      incomplete.luhn.should == valid_check
    end

    it "should append the correct check digit" do
      incomplete.luhn!.should == valid
    end

    it "should return Fixnums" do
      incomplete.luhn!.should be_a Fixnum
    end
  end

  describe "on Strings" do
    let(:valid) { '4 10041038 2' }
    let(:valid_check) { '2' }
    let(:incomplete) { '410041038' }
    let(:invalid) { '4100410383' }

    it "should validate valid luhn codes" do
      valid.luhn?.should be_true
    end

    it "should invalidate invalid luhn codes" do
      invalid.luhn?.should be_false
    end

    it "should calculate the correct luhn check digit" do
      incomplete.luhn.should == valid_check
    end

    it "should append the correct check digit" do
      incomplete.luhn!.should == valid.gsub(/\D+/, '')
    end

    it "should return Strings" do
      incomplete.luhn!.should be_a String
    end
  end

end
