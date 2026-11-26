class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.12"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.12/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "25e8ebcf9298cbb9173074a54f71e60e1af64b9a2aaaae85106d0a83b17f7050"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.12/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9401171b2f8a3e6059e8485dfbd8e555659f60c99697762ef7bfa3eb944bda40"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.12/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2703af1f9896eae547cad100da4e27ba54ffecb951756b822df8d1cf3f00201"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
