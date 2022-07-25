# frozen_string_literal: true

require "minitest/autorun"
require "filenames_set"

describe FilenamesSet do
  ORIGINAL_FILENAMES = %w[
    example.pdf example.pdf.backup example .example example-2.pdf
  ].freeze

  FIRST_DUPLICATES = %w[
    example-2.pdf example.pdf-2.backup example-2 .example-2 example-2-2.pdf
  ].freeze

  SECOND_DUPLICATES = %w[
    example-3.pdf example-3.pdf.backup example-3 .example-3 example-2-3.pdf
  ].freeze

  subject { FilenamesSet.new }

  ORIGINAL_FILENAMES.each do |original_filename|
    describe "adding filename first time" do
      let(:result) { subject << original_filename }

      it "returns original filename" do
        _(result).must_equal original_filename
      end
    end
  end

  ORIGINAL_FILENAMES.zip(FIRST_DUPLICATES).each do |original_filename, resulted_filename|
    describe "adding existing filename" do
      before { subject << original_filename }
      let(:result) { subject << original_filename }

      it "returns sequential unique filename" do
        _(result).must_equal resulted_filename
      end
    end
  end
end
