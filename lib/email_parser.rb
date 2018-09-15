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
  
  
  def parse 
    if @emails.include?(',')
      @emails_array =  @emails.split( ' ' )
    else
      @emails_array  = @emails.split

    end
  end



end