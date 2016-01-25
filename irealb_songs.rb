require 'nokogiri'
require 'open-uri'

File.open("seed_tunes.csv", "w") do |file|
doc = Nokogiri::HTML(open("http://www.irealb.com/forums/showthread.php?4522-Jazz-1300-Standards-Individual-Songs"))

title = doc.xpath("//blockquote[@class='postcontent restore']//a").collect  {|node| node.text.strip}

composer = doc.xpath("//blockquote[@class='postcontent restore']/text()").collect  {|node| node.text.strip.delete("-") }

url = doc.xpath("//blockquote[@class='postcontent restore']/a/@href").collect  {|node| node.text.strip}

3.times do
  composer.shift
end
composer.delete("")
composer.each(&:lstrip!)
composer.delete_at(634)
# p composer

# songs_hash = Hash.new { |h, k| h[k] = [] }
index = 0
1300.times do

  url[index].sub!("irealb://[url=irealb://", "")
  url[index].sub!("irealb://", "")

  14.times do
  url[index].sub!("%3D", ", ")
  url[index].sub!("%20", ", ")
  end
  
  url[index] = url[index].split(", ")
  url[index].pop
  style = ""
  if url[index].include?("Swing")
    style = "Swing"
  elsif url[index].include?("Bossa")
    style = "Bossa"
  elsif url[index].include?("Waltz")
    style = "Waltz"
  elsif url[index].include?("Ballad")
    style = "Ballad"
  elsif url[index].include?("Even" && "8ths")
    style = "Even 8ths"
  elsif url[index].include?("Latin")
    style = "Latin"
  elsif url[index].include?("Funk")
    style = "Funk"
  elsif url[index].include?("Afro")
    style = "Afro"
  elsif url[index].include?("Samba")
    style = "Samba"
  elsif url[index].include?("Rock")
    style = "Rock"
  else
    style = "unknown"
  end

    # p "#{title[index]} ........ #{style}........ #{composer[index]} .......... #{index}"
    # songs_hash[title[index]] << [composer[index], style]
      file << "{title: \"#{title[index]}\"" + ", style:" + " \"#{style}\""+ ", composer: " "\"#{composer[index]}\"" + "},\n"

# previous file was sent this line
# "#{title[index]},#{style},#{composer[index]},#{index}\n"
# "#{title[index]},#{style},#{composer[index]},#{index}\n"

  index += 1
    end
end

# nokogiri dump to file
# ruby ruby save array to file

# p songs_hash["You Must Believe In Spring"]



