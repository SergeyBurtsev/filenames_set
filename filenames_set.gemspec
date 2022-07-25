Gem::Specification.new do |s|
  s.name = "filenames_set"
  s.version = "0.0.0"
  s.summary = "Ruby set for unique filenames"
  s.description = "Very simple class to ensure that filenames are unique. If you are generating files into directory or adding files to zip archive, you probably want to avoid filenames collistion, when one file can overwrite another one with the same name. If filename is duplicated returns modified filename incremented sequentially."
  s.authors = ["Sergey Burtsev"]
  s.email = ["sergey@burtsev.com"]
  s.files = ["lib/filenames_set.rb"]
  s.homepage = "https://github.com/SergeyBurtsev/filenames_set"
  s.license = "MIT"
end
