#email:string
#password_digest:string
#
#password:string virtual
#password_conformation:string virtual

class User < ApplicationRecord
    has_secure_password

    validates :email, presence:true
end
