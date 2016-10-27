require 'csv'

desc "Import schools from csv file"
task :import => [:environment] do

  file = "db/seeds/schools.csv"

  CSV.foreach(file, :headers => true, :encoding => 'ISO-8859-1') do |row|
    School.create ( {     
      :unitid => row[2],
      :instnm => row[1],
      :addr => row[2],
      :city => row[3],
      :stabbr => row[4],
      :zip => row[5],
      :ein => row[12]
  }
    )
  end

end