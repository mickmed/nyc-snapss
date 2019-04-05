require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
    config.storage                             = :gcloud
    config.gcloud_bucket                       = 'nycsnaps-bucket'
    config.gcloud_bucket_is_public             = true
    config.gcloud_authenticated_url_expiration = 600
    
    config.gcloud_attributes = {
      expires: 600
    }
    
    config.gcloud_credentials = {
      gcloud_project: 'nycsnaps-project',
      gcloud_keyfile: 'nycsnaps-project-6cd48ba53525.json'
    }
  end