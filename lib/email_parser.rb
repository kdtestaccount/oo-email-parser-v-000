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
  
      it "parses CSV emails" do
      expect(EmailParser.new("avi@test.com, arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
    end

    it "parses space delimited emails" do
      expect(EmailParser.new("avi@test.com arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
    end

    it "parses both CSV and space delimited emails" do
      emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
      expect(EmailParser.new(emails).parse).to eq(["avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"]) 
    end

    it 'parses and removes duplicate emails' do
      expect(EmailParser.new("avi@test.com, avi@test.com").parse).to eq(["avi@test.com"])
    end
  end
end

  
  
  def parse 
    
    if @emails.include?(', ')
      @emails_array =  @emails.split( ', ' )
    elsif @emails.include?('","')
      @emails_array =  @emails.split( '","' )
    else
      @emails_array  = @emails.split
    end
  end



end