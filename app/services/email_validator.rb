class EmailValidator
  BASE_URI = 'https://apilayer.net/api/check'
  ACCESS_KEY = 'ac6e76cde3fdfc504691c535bf028532'
  include HTTParty
    def initialize(email)
      @email = email
    end

    def execute
      JSON.parse(get_email_smtp)['smtp_check']
    end

    private
    
    def get_email_smtp
      self.class.get(BASE_URI, query: { access_key: ACCESS_KEY, email: @email }).body
    end
end
