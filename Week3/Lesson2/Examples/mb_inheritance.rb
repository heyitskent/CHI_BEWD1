#Sharing Behavior and Variables

# Create an employee class.
# This is the base class the others will inherit from
# Employees have a first name attr, last name attr, and
# a full name method.
class Employee 
	attr_accessor :first_name, :last_name

	def initialize (fname,lname)
		@first_name=fname
		@last_name=lname
	end 

	def full_name 
		"#{self.first_name} #{self.last_name}"
	end
end

# A manager is contactable by email,
# and wants their title as part of their full name display
class Manager < Employee # < this thing is called the "extends"
	attr_accessor :title, :email
	

	def initialize (fname, lname,title, email)
		super(fname, lname) #super goes to the super class (employee)
		@title=title
		@email=email
	end
		
	def contact 
		self.email
	end 

	def full_name
		"#{self.first_name} #{self.last_name} | #{title}"
	end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
	attr_accessor :twitter

	def initialize(fname, lname, twitter)
		super(fname, lname)
		@twitter=twitter
	end

	def contact
		self.twitter 
	end
end


bill_lumburg=Manager.new("Bill","lumburg","big boss","bill@frank.com")
puts bill_lumburg.full_name
puts bill_lumburg.contact

puts jan_jan=Marketer.new("jan","jan","@Jan2Jan")
puts jan_jan.full_name
puts jan_jan.contact

Joe=Employee.new("joe","butt")
puts Joe.full_name