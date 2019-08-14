class Libnspv < Formula
  desc "Portable C library for creating and manipulating Komodo-compatible
  Smart Chains, including the KMD main chain data structures and interacting
  with the p2p network"
  homepage "https://docs.komodoplatform.com/nSPV"
  url "https://github.com/jl777/libnspv/archive/0.1.tar.gz"
  version "0.1"
  sha256 ""

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
