class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.1.0/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b454d9ed53ed48f6da8afc762c880dc29b3991180dccfce88f253a2b44a08ab5"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.1.0/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4121b9d4b1ca02061576f7c5a8fb2be9c3f57316f7a11d2fe2366eb1bcf70ee2"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.1.0/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54af73c7c4088527a110834cfaf281f972a00b2ae423cf657612631a0c12bf75"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
