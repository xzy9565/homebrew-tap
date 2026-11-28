class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.15"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.15/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f0ee082fcbf0cace1e731089c43ab81f0df1cae1b1ba7fb7498ec81113ee6b98"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.15/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8e615e24fe46437d638037c3339600d67a6c675f9e62bb0fd4c1235f4c76d682"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.15/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebe284de84087afa5cef19414d87820fe6ffe5a33fe02ed14976c2b28ae6c252"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
