class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.0/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a71ec30366e61c6cdc9de84cdc312a7670af2b085d19352a3564af8316a05ea1"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.0/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "466df17977fe8e3960090a0bda9ba0bf71ab59d812027b9a7ca19337062c8172"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.0/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ddf5ed58fbfbb2f5b93a73d1b08c96889c7ac06de1a937d1614ac5b077b5ca1"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
