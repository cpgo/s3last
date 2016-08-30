require "s3last/version"
require "s3last/downloader"

module S3last
  def self.download
    Downloader.run
  end
end
