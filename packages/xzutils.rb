require 'package'

class Xzutils < Package
  version '5.2.3' 
  source_url 'http://tukaani.org/xz/xz-5.2.3.tar.gz' 
  source_sha1 '529638eec3597e429cc54c74551ac0a89169e841' 

  def self.build
    system "./configure",
      "--prefix=/usr/local",
      "--disable-docs"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
