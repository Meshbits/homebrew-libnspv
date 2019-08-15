class Libnspv < Formula
  desc "Portable C library for creating and manipulating Komodo-compatible
  Smart Chains, including the KMD main chain data structures and interacting
  with the p2p network"
  homepage "https://docs.komodoplatform.com/nSPV"
  url "https://github.com/jl777/libnspv/archive/v0.1.tar.gz"
  version "v0.1"
  sha256 "ca295bfc0d65aa5e58e8131fe0ef4b31cd928a17df2f1287eb2dfee62218f5e6"

  # depends_on "cmake" => :build
  depends_on "libsodium"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    ENV.prepend_path "PATH", "/usr/local/bin"
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
