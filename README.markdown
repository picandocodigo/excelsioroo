# Excelsioroo - Spreadsheet parser

This gem uses the [roo](http://roo.rubyforge.org/ "roo") gem to parse spreadsheet files and export the data to other formats. It was created to parse data following the work started in the [Desarrollando América Latina](http://desarrollandoamerica.org) hackaton.

## Usage

```
excelsioroo examples/establecimientos_primaria_dpto.xls B 7 F 27
```

It receives a spreadsheet file as a parameter, it can be:
 * .ods - Open Document Spreadsheet: LibreOffice and OpenOffice
 * .xsl y .xslx - Excel

To process this data, you need to know the cells from the document where the data is.

## TO - DO
* **WRITE TESTS!**
* Make default export while there are cells if no cells are specified.
* Export to other formats (Roo supports yaml and csv).
* Implement a simple web interface as an example to upload files and export the data.
* Check input for the executable.
