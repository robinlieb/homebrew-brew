class InputSourceManagerCli < Formula
    desc "Command line tool to orchestrate the input sources on macOS."
    homepage "https://github.com/robinlieb/input-source-manager-cli"
    url "https://github.com/robinlieb/input-source-manager-cli/archive/1.0.0.tar.gz"
    sha256 "3e540a22032489ae10a6aae573950bb6c5b1c517f117205f8140b17df41ae257"
    license "Apache-2.0"
  
    def install
      system "swift", "build", "--disable-sandbox", "-c", "release"
      bin.install ".build/release/input-source-manager-cli"
    end
  end