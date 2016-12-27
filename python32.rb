class Python32 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.2.6/Python-3.2.6.tgz"
  version "3.2.6"
  sha256 "fc1e41296e29d476f696303acae293ae7a2310f0f9d0d637905e722a3f16163e"

  def install
    cflags = "CFLAGS=-I/usr/local/opt/openssl/include"
    ldflags = "LDFLAGS=-L/usr/local/opt/openssl/lib"
    system "./configure", "--prefix=#{prefix}", cflags, ldflags
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.2"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.2-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.2m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.2m-config"
  end

end
