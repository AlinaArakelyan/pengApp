class ApplicationController < ActionController::API
    def secret
        "yourLittleSecret"
    end

    def encode_token(user)
        payload = {user_id: user.id}
        token = JWT.encode(payload, secret, 'HS256')
    end

    def token
        if request.headers["Authorization"]
            token = request.headers["Authorization"].split(' ')[1]
        end
    end

    def decode_token
        if token
            decode_token = JWT.decode(token, secret, true, {algorithm: 'HS256'})
            user_id = decode_token[0]['user_id']
        end
    end

    def logged_in_user
        if decode_token
            User.find(decode_token)
        end
    end
end
