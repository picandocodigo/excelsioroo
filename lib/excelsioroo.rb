require 'roo'
require 'json'

class Excelsioroo
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
    document
  end

  def get_data start_column, start_row, end_column, end_row
    data, rows = [], []

    # Traverse the rows and columns
    start_row.to_i.upto end_row.to_i do |row|
      start_column.upto end_column do |column|
        data << "#{@spreadsheet.cell(row, column)} "
      end
      rows << data
    end
    puts JSON.generate(rows)
  end

end
