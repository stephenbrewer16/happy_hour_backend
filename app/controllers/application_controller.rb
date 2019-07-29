class ApplicationController < ActionController::API
    def get_auth_header
        request.headers["Authorization"]
    end

    def encode_token(id)
        JWT.encode({user_id: id}, "Encode this ish")
    end

    def decode_token
        begin
            JWT.decode(get_auth_header, "Encode this ish")[0]["user_id"]
        rescue
            nil
        end
    end

    def session_user
        User.find_by(id: decode_token)
    end
end
