class Python35 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.5.3/Python-3.5.3.tgz"
  version "3.5.3"
  sha256 "d8890b84d773cd7059e597dbefa510340de8336ec9b9e9032bf030f19291565a"

  def install
    cflags = "CFLAGS=-I/usr/local/opt/openssl/include"
    ldflags = "LDFLAGS=-L/usr/local/opt/openssl/lib"
    system "./configure", "--prefix=#{prefix}", cflags, ldflags
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.5"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.5-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.5m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.5m-config"
  end

end
