require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'active_support'
require 'active_support/core_ext'

doc = Nokogiri::XML(open('http://localhost:8881/history.xml'))

doc.xpath('//transaction-list').each do |transaction|
  transaction.children.each do |child|
    puts child.name
    puts child.content
    puts "" 
  end
  puts "" 
end
