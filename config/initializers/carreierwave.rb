CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' 
 
  

  config.s3_access_key_id = ENV['AKIAIWWQF5REKTC4ZYGQ']
  config.s3_secret_access_key = ENV['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']
  config.s3_bucket = ENV['floorsys_demo']
end
