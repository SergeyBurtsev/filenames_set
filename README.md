# FilenamesSet

Very simple class to ensure that filenames are unique. If you are generating files into directory or adding files to zip archive, you probably want to avoid filenames collistion, when one file can overwrite another one with the same name. If filename is duplicated returns modified filename incremented sequentially.

## Install

```
gem "filenames_set"

```

## Usage
```
filenames = FilenamesSet.new
result = filenames << "example.pdf"
result # => "example.pdf"
result = filenames << "example.pdf"
result # => "example-2.pdf"
```
