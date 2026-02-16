class Counselors < Formula
  desc "Fan out prompts to multiple AI coding agents in parallel"
  homepage "https://github.com/aarondfrancis/counselors"
  url "https://registry.npmjs.org/counselors/-/counselors-0.4.7.tgz"
  sha256 "dbb92480febb69f1faca6fb8817c6b17f2bbcbe660ff783ab5e1e04e5e8f4315"
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
