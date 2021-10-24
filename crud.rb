module Crud

	require 'bcrypt'
	puts "Module Crud is activate"
	def Crud.create_hash_password(password)
		BCrypt::Password.create(password)
	end

	def Crud.verify_hash_password(password)
		BCrypt::Passsword.new(password)
	end

	def Crud.secure_user_hash(list_of_users)
		list_of_users.each do |user_recod|
			user_recod[:password] = create_hash_password(user_recod[:password])
		end
		list_of_users
	end

	def Crud.authenticate_user(username,password,list_of_users)
		list_of_users.each do
		 |user_recod| if  user_recod[:username] == username && user_recod[:password] == password
		 	return user_recod
		 end
		 credential incorrect
		end
	end

end	