class Fsr < Formula
    include Language::Python::Virtualenv
  
    desc "FSR is report generator for Flutter tests"
    homepage "https://github.com/rpluzhnikov"
    url "https://files.pythonhosted.org/packages/43/b2/044da31a328fbb5f987edff0322dc600cccde556412e7fc110d6fd23efc6/fsr-0.1.0.tar.gz"
    sha256 "5c31036fedd7cde319a23ee0dd9403796c4ca2d149ddfecad636044b9bd1dc30"
    license "MIT"
  
    depends_on "python"
  
    def install
      system "python3", "-m", "pip", "install", "fsr==0.1.0", "--prefix=#{prefix}", "--no-deps"
      bin.install_symlink "#{prefix}/bin/fsr"
    end
  
    test do
      false
    end
  end
  