# frozen_string_literal: true

require "set"

class FilenamesSet
  def initialize
    @set = Set.new
  end

  def <<(filename)
    counter = 1
    counter += 1 until @set.add? sequential_filename(filename, counter)
    sequential_filename(filename, counter)
  end

  def sequential_filename(filename, counter)
    base = File.basename(filename, ".*")
    suffix = "-#{counter}" if counter > 1
    extension_with_delimiter = File.extname(filename)
    [base, suffix, extension_with_delimiter].join
  end
end
