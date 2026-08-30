class Openshomer < Formula
  include Language::Python::Virtualenv

  desc "Autonomous AI Agent Security Engineer (Powered by MuleRun, QoderWork & Qoder)"
  homepage "https://github.com/kavix/OpenShomer"
  url "https://github.com/kavix/OpenShomer/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "1a63fa73458d662cceda22ea1d8167f7b3e7de6249d534158f2cd1d6303d8e76"
  license "Apache-2.0"
  head "https://github.com/kavix/OpenShomer.git", branch: "main"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"openshomer", "version"
  end
end
