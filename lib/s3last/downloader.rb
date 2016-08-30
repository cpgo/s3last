class Downloader
  def self.run
    require 'aws-sdk'
    s3 = Aws::S3::Resource.new
    client = Aws::S3::Client.new

    bucket = s3.bucket(ENV['AWS_DUMPS_BUCKET'])

    objects = []
    bucket.objects.each do |obj|
      objects << obj
    end
    File.open("#{ENV['HOME']}/Downloads/#{objects.last.key}", 'wb') do |file|
      client.get_object({bucket: 'agrocontar-gestor-dumps', key: objects.last.key}, target: "#{ENV['HOME']}/Downloads/#{objects.last.key}")
    end
    puts objects.last.key
  end
end
