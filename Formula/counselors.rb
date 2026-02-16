class Counselors < Formula
  desc "Fan out prompts to multiple AI coding agents in parallel"
  homepage "https://github.com/aarondfrancis/counselors"
  url "https://registry.npmjs.org/counselors/-/counselors-0.4.3.tgz"
  sha256 "8fa5f0812544d4e679f45be66c7f9170f7d102f455f29a8d3b3dafaa7fad8ab0"
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
