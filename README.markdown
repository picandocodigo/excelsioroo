# Spreadsheet parser

This app uses the [roo](http://roo.rubyforge.org/ "roo") gem to parse spreadsheet files and export the data to other formats.


# Parseador de hojas de cálculo

Esta aplicación utiliza la gema [roo](http://roo.rubyforge.org/ "roo") para parsear archivos de hoja de cálculos y exportar los datos a otros formatos. Por ahora la aplicación cuenta con una clase utilitaria que puede ser ejecutada desde línea de comando con los parámetros correspondientes.

Esta aplicación se creó para parsear datos abiertos siguiendo con el trabajo iniciado en [Desarrollando América Latina](http://desarrollandoamerica.org). 

## Modo de uso

La aplicación recibe como parámetro un archivo de hoja de cálculo en los siguientes formatos:
 * .ods - Open Document Spreadsheet: LibreOffice y OpenOffice)
 * .xsl y .xslx - Excel

Para procesar estos datos, se necesita conocer las celdas del documento entre las cuales se encuentran.

### Ejemplo de uso:
`ruby SpreadsheetParser.rb examples/establecimientos_primaria_dpto.xls B 7 F 27`

## TO - DO
 * Aceptar hojas de cálculo de Google Docs. Roo ya lo hace, por lo que es cuestión de implementar la descarga del archivo desde Google.
 * Implementar una interfaz web sencilla como ejemplo de uso para subir archivos y exportar los datos.