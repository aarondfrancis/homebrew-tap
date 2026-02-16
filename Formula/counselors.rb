class Counselors < Formula
  desc "Fan out prompts to multiple AI coding agents in parallel"
  homepage "https://github.com/aarondfrancis/counselors"
  url "https://registry.npmjs.org/counselors/-/counselors-0.4.5.tgz"
  sha256 "ad7aacc0be40111195df03da2b2bc19c9c80bf6d483ed71246113a99abd61f32"
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
