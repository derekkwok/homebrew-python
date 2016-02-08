class Python31 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.1.5/Python-3.1.5.tgz"
  version "3.1.5"
  sha256 "d12dae6d06f52ef6bf1271db4d5b4d14b5dd39813e324314e72b648ef1bc0103"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.1"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.1-config"
  end

end
