class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.10"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.10/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "fc2a2e1c410d6c7ed94d5d59594e463054488438199daaf74cbdd4331a19380d"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.10/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1426628dab429fde2e64446435c95cfeb0a0be1a2d1b1574a44640c868be6777"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.10/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c786e648cdea15ab97821fe34b3dc02b21cc7422fc8750ab79bbb7182b30803"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
