class LemiController < ApplicationController
  
    include AuthBuild
    
    def reservation1
      @user = User.new
    end
  
    def reservation2
      @user = User.new   
      $date = params[:info][:date]
      $user_info1 = params[:user]
      @user.name = ""
      @user.mail = ""
      if $date !~ /[1-2]/ || $user_info1['num'] !~ /[1-3]/
        @message = "エラー"
        render "reservation1"
      end
    end
  
    def reservation3
      $time = params[:info][:time]
      $user_info2 = params[:user]
#      if $time !~ /[0-9]{1,2}/
#        @message = "エラー"
#        render "reservation2"
#      end
    end
  
    def reservation4
      $datetime = ($date - 1) * 14 + $time
      
      @auth_key = url_build
      @auth = "http://localhost:3000/lemi/finished/" + @auth_key
      user = User.new( name: $user_info2['name'], mail: $user_info2['mail'], performance_id: $datetime, num: $user_info1['num'], auth: @auth_key )
      if !user.save
        render :text => "エラー"
      else
        @mail = GakusaiMailer.sendmail_confirm( @auth, $user_info2['mail'] ).deliver      
      end
    end
  
    def contact
      @user = User.new
    end
  
    def finished
      @auth = params[:auth_key]
      reg_process = User.find_by( auth: @auth )
      @cnt = User.where( auth: @auth ).count
      if reg_process
        if reg_process[:key].nil?
          @key = Random.rand(0 .. 9999)        
          reg_process.update_attribute(:key, @key )
          @mail = GakusaiMailer.auth_fin( reg_process['mail'], @key ).deliver     
          time_table = Reser.find( reg_process[:performance_id] )
          @number = time_table[:vancancy]
          time_table.update_attribute(:vancancy, @number - $user_info1['num'].to_i )
      
        else
          @message = "失敗"
        end
      else
        @message = "失敗"
      end
    end
  end
  