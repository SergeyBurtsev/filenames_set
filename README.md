# FilenamesSet

Very simple class to ensure that filenames are unique. If you are generating files into directory or adding files to zip archive, you probably want to avoid filenames collistion, when one file can overwrite another one with the same name. If filename is duplicated returns modified filename incremented sequentially.

## Install

```
gem "filenames_set"

```

## Usage
```
filenames_set = FilenamesSet.new
result = filenames_set << "example.pdf"
result # => "example.pdf"
result = filenames_set << "example.pdf"
result # => "example-2.pdf"
```
