require "csv"
src = File.read("240_table.txt")
dst = CSV.generate do |csv|
  src.split("\n").each_slice(2) do |row|
    csv << row
  end
end
File.write("240_table.csv", dst)
