class Python33 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.3.6/Python-3.3.6.tgz"
  version "3.3.6"
  sha256 "0a58ad1f1def4ecc90b18b0c410a3a0e1a48cf7692c75d1f83d0af080e5d2034"

  def install
    cflags = "CFLAGS=-I/usr/local/opt/openssl/include"
    ldflags = "LDFLAGS=-L/usr/local/opt/openssl/lib"
    system "./configure", "--prefix=#{prefix}", cflags, ldflags
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.3"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.3-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.3m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.3m-config"
  end

end
