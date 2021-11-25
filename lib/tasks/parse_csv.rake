require 'csv'

task parse_csv: :environment do
  csv_content = File.read('Books.csv')
  csv         = CSV.parse(csv_content, :headers => false, quote_char: "\x00")
  csv.each do |row|
    Article.create(
      :rating          => row[0],
      :title           => row[1],
      :author          => row[2],
      :vendor          => row[3],
      :price           => row[4],
      :description     => row[5],
      )
  end
end
