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
      @emails =  @emails.split( ' ' )
      # @emails_array << email_address
    else
      email_address  = @emails.split( ' ' ).join(" , ")

    end
  end



end