# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



class EmailParser
  
  attr_accessor :emails, :emails_array
  
  
  def initialize(emails)
    @emails = emails
    @emails_array = []
  end
  
      # expect(EmailParser.new("avi@test.com, arel@test.com").parse).to eq(["avi@test.com", 
      # expect(EmailParser.new("avi@test.com arel@test.com").parse).to eq(["avi@test.com", 
      # emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"

      # expect(EmailParser.new("avi@test.com, avi@test.com").parse).to eq(["avi@test.com"])

  def parse 
      @emails.split(/[,\s]+/).uniq
  end


end