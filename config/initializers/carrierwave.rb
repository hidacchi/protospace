CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Settings.aws[:aws_access_key_id],
    aws_secret_access_key: Settings.aws[:aws_secret_access_key],
    region: Settings.aws[:region],
  }

  config.cache_storage = :fog # キャッシュにS3を指定

  case Rails.env
    when 'production'
      config.fog_directory = 'amazon_bucketname'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/amazon_bucketname'

    when 'development'
      config.fog_directory = 'amazon_bucketname'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/amazon_bucketname'

    when 'test'
      config.fog_directory = 'test.amazon_bucketname'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.amazon_bucketname'
  end
end
