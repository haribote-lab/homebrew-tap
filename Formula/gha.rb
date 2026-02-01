class Gha < Formula
  desc "Proxy gh CLI commands with GitHub App authentication"
  homepage "https://github.com/haribote-lab/github-app-cli"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/haribote-lab/github-app-cli/releases/download/v0.0.1/gha_0.0.1_darwin_arm64.tar.gz"
      sha256 "38374e1d4527d6d8a56a44ff0a0576ef44d61a2dc14c463d3c16614c86cea1a3"
    else
      url "https://github.com/haribote-lab/github-app-cli/releases/download/v0.0.1/gha_0.0.1_darwin_amd64.tar.gz"
      sha256 "aab6107ee7f4f684b3399c58892ef6ae0a4723140e262c65dbd22b73ef99fe82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/haribote-lab/github-app-cli/releases/download/v0.0.1/gha_0.0.1_linux_arm64.tar.gz"
      sha256 "7b65b8595f6b92d6cc86139cccbaecc7b574b47cee64065a83919eef06423dc4"
    else
      url "https://github.com/haribote-lab/github-app-cli/releases/download/v0.0.1/gha_0.0.1_linux_amd64.tar.gz"
      sha256 "687228d1b6213d1d15954232b48dcfb5924202bcd65339e76097a8aca476a76f"
    end
  end

  def install
    bin.install "gha"
  end

  test do
    system "#{bin}/gha", "--version"
  end
end
