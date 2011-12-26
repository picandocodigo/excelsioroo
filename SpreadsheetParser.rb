require 'roo'
require 'json'

class SpreadsheetParser
  attr_reader :spreadsheet
  
  def initialize filename, sheet = nil
    @spreadsheet = check_file filename
    sheet = @spreadsheet.sheets.first unless !sheet.nil?
    @spreadsheet.default_sheet = sheet
  end
  
  def check_file filename
    case filename
    when /.xls/
      document = Excel.new filename
    when /.xlsx/
      document = Excelx.new filename
    when /.ods/
      document = Openoffice.new filename
    end
    return document
  end

  def get_data startColumn, startRow, endColumn, endRow
    data = []
    rows = []
    # Traverse the rows and columns
    startRow.to_i.upto endRow.to_i do |row|
      startColumn.upto endColumn do |column|
        data << "#{@spreadsheet.cell(row, column)} "
      end
      rows << data
    end
    puts JSON.generate(rows)
  end

end

parser = SpreadsheetParser.new(ARGV[0])
parser.get_data ARGV[1], ARGV[2], ARGV[3], ARGV[4]

