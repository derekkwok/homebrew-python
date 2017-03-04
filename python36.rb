class Python36 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz"
  version "3.6.0"
  sha256 "aa472515800d25a3739833f76ca3735d9f4b2fe77c3cb21f69275e0cce30cb2b"

  def install
    cflags = "CFLAGS=-I/usr/local/opt/openssl/include"
    ldflags = "LDFLAGS=-L/usr/local/opt/openssl/lib"
    system "./configure", "--prefix=#{prefix}", cflags, ldflags
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.6"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.6-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.6m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.6m-config"
  end

end
