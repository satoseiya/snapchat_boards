CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/"
  config.storage = :fog
  config.permissions = 0666
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJUGD52OPF7PV7CIA',
    :aws_secret_access_key  => '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',
    :region => 'ap-northeast-1'
  }
  config.fog_directory  = 'snapchatboardsbucket'
end