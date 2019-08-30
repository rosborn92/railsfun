class MainController < ApplicationController
    def quadruple
        p params
        @number = params[:number].to_i * 4
    end

    def mult
        p params
        @result = params[:num1].to_i * params[:num2].to_i
    end

    def subscribe
        p params
        @name = params[:name]
        @email = params[:email]
        if !@name.nil? && !@email.nil?
            flash.now[:notice] = "Thanks, #{@name}! You are subscribed with this email: #{@email}!"
        end
    end

    def signup
        p params
        @user_name = params[:user_name]
        @email = params[:email]
        @password = params[:password]
        @pswdcon = params[:pswdcon]
        if !@user_name.nil? && !@email.nil? && !@password.nil? && !@pswdcon.nil?
            flash.now[:notice] = "Hello #{@user_name}!"
        end
    end

    def anadeperfil
        p params
        @fname = params[:fname]
        @lname = params[:lname]
        @blurb = params[:blurb]
        @hobbies = params[:hobbies]
        if !@fname.nil? && !@lname.nil? && !@blurb.nil? && !@hobbies.nil?
            flash.now[:alert] =
            "Name: #{@fname} #{@lname}
            Blurb: #{@blurb}
            Hobbies: #{@hobbies}"
        end
    end

    def signin
        p params
        @user_id = params[:user_id].to_s
        @password = params[:password].to_s
        if @user_id.include? '1' || '2' || '3' || '4' || '5' || '6' || '1' || '7' || '8' || '9' || '10'
            flash.now[:alert] = 'User Id can not contain numbers.'
        elsif !@password.include? '1' || '2' || '3' || '4' || '5' || '6' || '1' || '7' || '8' || '9' || '10' || '!' || '?' || '#' || '$'
            flash.now[:alert] = 'Password must contain a number and special character (!, ?, #, $).'
        elsif !@user_id.nil? && !@password.nil?
            flash.now[:alert] = "Welcome Back, #{@user_id}"
        end
    end

    def game
        p params
        params[:number] = (rand(100))
        cookies[:number] = params[:number] unless params[:number].nil?
        params[:newnum] = (rand(100))
    end

end
