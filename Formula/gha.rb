class Gha < Formula
  desc "Proxy gh CLI commands with GitHub App authentication"
  homepage "https://github.com/haribote-lab/github-app-cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/haribote-lab/github-app-cli/releases/download/v0.0.2/gha_0.0.2_darwin_arm64.tar.gz"
      sha256 "148ec7642ea8d2738359df55c28b11457586f0967e3fac39f6b20711ccf9a462"
    else
      url "https://github.com/haribote-lab/github-app-cli/releases/download/v0.0.2/gha_0.0.2_darwin_amd64.tar.gz"
      sha256 "bc70fae96867db85058317762e37ee06631501c9c46d02ae6112bbbf40a7f111"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/haribote-lab/github-app-cli/releases/download/v0.0.2/gha_0.0.2_linux_arm64.tar.gz"
      sha256 "6f6e4111a47dc37de8810d46330fb2facfdb720707aa17f65f146981f337615c"
    else
      url "https://github.com/haribote-lab/github-app-cli/releases/download/v0.0.2/gha_0.0.2_linux_amd64.tar.gz"
      sha256 "6fd46a227662b27f7955d9837dbfbee19f3861701d6ab17a97bfc6bde8006477"
    end
  end

  def install
    bin.install "gha"
  end

  test do
    system "#{bin}/gha", "--version"
  end
end
