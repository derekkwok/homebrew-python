class Python35 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz"
  version "3.5.2"
  sha256 "3fe8434643a78630c61c6464fe2e7e72"

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