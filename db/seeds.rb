require "csv"

# Destroy all records
Comic.destroy_all
Publisher.destroy_all
Format.destroy_all
Edition.destroy_all
Writer.destroy_all

# Reset auto-Increment for all tables
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='publishers';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='formats';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='editions';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='writers';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='comics';")

filenamePublisher = Rails.root.join("db/publishers.csv")
filenameFormat = Rails.root.join("db/formats.csv")
filenameEdition = Rails.root.join("db/editions.csv")
filenameWriter = Rails.root.join("db/writers.csv")
filenameComic = Rails.root.join("db/comics.csv")

# Reads data for publisher,format,edition,writer
publisher_data = File.read(filenamePublisher)
format_data = File.read(filenameFormat)
edition_data = File.read(filenameEdition)
writer_data = File.read(filenameWriter)
comic_data = File.read(filenameComic)

publishers = CSV.parse(publisher_data, headers: true, encoding: "utf-8")
format_type = CSV.parse(format_data, headers: true, encoding: "utf-8")
edition = CSV.parse(edition_data, headers: true, encoding: "utf-8")
writer = CSV.parse(writer_data, headers: true, encoding: "utf-8")
comic = CSV.parse(comic_data, headers: true, encoding: "utf-8")

# Creates publisher
publishers.each do |p|
  # Create publishers
  comic_publisher = Publisher.find_by_name(p["publisher_name"])

  unless comic_publisher&.valid?

    publisher = Publisher.create(
      name:    p["publisher_name"],
      founded: p["founded"],
      logo:    p["logo"]
    )
  end
  Rails.logger.debug "Created #{Publisher.count} publishers."
end

# Import Format
# Creates publisher
format_type.each do |p|
  # Create publishers
  comic_format = Format.find_by_format(p["format"])

  next if comic_format&.valid?

  format_table = Format.create(
    format:    p["format"]
  )
end

# Import Edition
# Creates Edition
edition.each do |p|
  # Create publishers
  comic_edition = Edition.find_by_edition(p["edition"])

  next if comic_edition&.valid?

  edition_table = Edition.create(
    edition:    p["edition"]
  )
end

# Import Writer
# Creates Writer
writer.each do |p|
  # Create publishers
  comic_writer = Writer.find_by(last_name: p["last_name"])

  next if comic_writer&.valid?

  writer_table = Writer.create(
    first_name: p["first_name"],
    last_name:  p["last_name"]
  )
end

# Import Comics
# Creates Comics
comic.each do |p|
  # Create publishers
  comic_comic = Comic.find_by_title(p["title"])

  next if comic_comic&.valid?

  comic_table = Comic.create(
    title:        p["title"],
    image_cover:  p["image_cover"],
    release_date: p["release_date"],
    cover_price:  p["cover_price"],
    publisher_id: p["publisher_id"],
    writer_id:    p["writer_id"],
    edition_id:   p["edition_id"],
    format_id:    p["media_id"]
  )
end
