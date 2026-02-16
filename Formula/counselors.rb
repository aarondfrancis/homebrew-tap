class Counselors < Formula
  desc "Fan out prompts to multiple AI coding agents in parallel"
  homepage "https://github.com/aarondfrancis/counselors"
  url "https://registry.npmjs.org/counselors/-/counselors-0.4.8.tgz"
  sha256 "80dfacfdfc0fad25460e7321687a57cf3ea6a4c3ccbb1b80ab809db7e9074001"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink libexec/"bin/counselors"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/counselors --version")
  end
end
