require "csv"
src = ARGF.read
dst = CSV.generate do |csv|
  src.split("\n").each_slice(2) do |row|
    csv << row
  end
end
puts dst
