class Python35 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz"
  version "3.5.2"
  sha256 "1524b840e42cf3b909e8f8df67c1724012c7dc7f9d076d4feef2d3eff031e8a0"

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
