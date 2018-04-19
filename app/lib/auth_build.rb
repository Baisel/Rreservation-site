module AuthBuild
  def url_build
    array = Array.new( 36 )
    array = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    auth_key = ""
    20.times{
      num = Random.rand(0 .. 35)
      auth_key = auth_key + array[ num ]
    }
    return auth_key
  end
  def key_build
    
  end
end
