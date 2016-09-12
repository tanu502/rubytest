class User < ActiveRecord::Base
	validates_presence_of :username,message:"กรอกชื่อผู้ใช้"
	validates_presence_of :password,message:"กรอกรหัสผ่าน"
end
