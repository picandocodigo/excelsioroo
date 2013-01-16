# Excelsioroo - Spreadsheet parser

This gem uses the [roo](http://roo.rubyforge.org/ "roo") gem to parse spreadsheet files and export the data to other formats. It was created to parse data following the job started in [Desarrollando América Latina](http://desarrollandoamerica.org). 

## Usage

It receives a spreadsheet file as a parameter, it can be:
 * .ods - Open Document Spreadsheet: LibreOffice y OpenOffice)
 * .xsl y .xslx - Excel

To process this data, you need to know the cells from the document where the data is.

`excelsioroo examples/establecimientos_primaria_dpto.xls B 7 F 27`

## TO - DO
 * Aceptar hojas de cálculo de Google Docs. Roo ya lo hace, por lo que es cuestión de implementar la descarga del archivo desde Google.
 * Implementar una interfaz web sencilla como ejemplo de uso para subir archivos y exportar los datos.
