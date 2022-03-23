class AppleMusicJwtGenerator < Formula
    desc "Command line tool to generate JWT for Apple Music API."
    homepage "https://github.com/robinlieb/apple-music-jwt-generator"
    url "https://github.com/robinlieb/apple-music-jwt-generator/archive/1.0.0.tar.gz"
    sha256 "b4235018682e5ea45d9e4e8db35ff2aa031fc3a296ad70401d2bb596ed1d7b25"
    license "Apache-2.0"
  
    def install
      system "swift", "build", "--disable-sandbox", "-c", "release"
      bin.install ".build/release/apple-music-jwt-generator"
    end
  end