class User < ActiveRecord::Base
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i                # email_regex for email validation

	validates :name,  presence: true , length: {:maximum => 50}       #require the user to have a name in the database 
	validates :email, presence: true ,                                   #require the user to have an email in the database
                      format:{:with => email_regex}  ,                  #validate the email format
                      uniqueness: {:case_sensitive => false}                                #for email to be unique 
end








