class Libnspv < Formula
  desc "Portable C library for creating and manipulating Komodo-compatible
  Smart Chains, including the KMD main chain data structures and interacting
  with the p2p network"
  homepage "https://docs.komodoplatform.com/nSPV"
  url "https://github.com/ns408/libnspv/archive/0.1.tar.gz"
  version "0.1"
  sha256 "b48a312d4b2c496073a5f9007d1d7d4a7271e5e41ad17cd9b08643980c7dfec2"

  # depends_on "cmake" => :build
  depends_on "libsodium"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
