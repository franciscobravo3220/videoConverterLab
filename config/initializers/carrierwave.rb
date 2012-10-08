if Rails.env.production?


  CarrierWave.configure do |config|

    config.fog_credentials = {

        :provider => 'AWS',
        :aws_access_key_id => 'AWS_ACCES_KEY_ID',
        :aws_secret_access_key => 'AWS_SECRET_ACCESS_KEY',
        :region => 'us-east-1'
    }



    config.fog_directory = 'PROD_BUCKET'
    config.fog_public = true
    #config.fog_host= 'http://localhost:3000'

    #config.root = ::Rails.root.to_s + "/public"

  end

elsif Rails.env.development?

  CarrierWave.configure do |config|

    config.fog_credentials = {

        :provider => 'AWS',
        :aws_access_key_id => 'AWS_ACCES_KEY_ID',
        :aws_secret_access_key => 'AWS_SECRET_ACCESS_KEY',
        :region => 'us-east-1'
    }



    config.fog_directory = 'DEV_BUCKET'
    config.fog_public = true
    #config.fog_host= 'http://localhost:3000'

    #config.root = ::Rails.root.to_s + "/public"

  end

else

  CarrierWave.configure do |config|

    config.fog_credentials = {

        :provider => 'AWS',
        :aws_access_key_id => 'AWS_ACCES_KEY_ID',
        :aws_secret_access_key => 'AWS_SECRET_ACCESS_KEY',
        :region => 'us-east-1'
    }



    config.fog_directory = 'STAG_BUCKET'
    config.fog_public = true
    #config.fog_host= 'http://localhost:3000'

    #config.root = ::Rails.root.to_s + "/public"

  end


end