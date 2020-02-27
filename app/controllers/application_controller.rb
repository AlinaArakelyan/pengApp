class ApplicationController < ActionController::API
#     def secret
#         "yourLittleSecret"
#     end

#     def encode_token(user)
#         payload = {user_id: user.id}
#         token = JWT.encode(payload, secret, 'HS256')
#     end

#     def token
#         if request.headers["Authorization"]
#             token = request.headers["Authorization"].split(' ')[1]
#         end
#     end

#     def decode_token
#         if token
#             decode_token = JWT.decode(token, secret, true, {algorithm: 'HS256'})
#             user_id = decode_token[0]['user_id']
#         end
#     end

#     def logged_in_user
#         if decode_token
#             User.find(decode_token)
#         end
#     end
# end

# skip_before_action :verify_authenticity_token
# helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!

def secret
    "secret"
end

def login
  session[:user_id] = @user.id
end

def logged_in?
  !!session[:user_id]
end

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def authorized_user?
   @user == current_user
 end
def logout!
   session.clear
 end
end