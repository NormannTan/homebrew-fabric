# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricTools < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/darwin-amd64-1.4.0/hyperledger-fabric-darwin-amd64-1.4.0.tar.gz"
  version "1.4.0"
  sha256 "38d0cc3152d00167517f7e19d881b5c16169a01e0d081260c8b4ef8578689c04"

  def install
    bin.install "bin/cryptogen"
    bin.install "bin/configtxgen"
    bin.install "bin/configtxlator"
    bin.install "bin/discover"
    bin.install "bin/fabric-ca-client"
    bin.install "bin/idemixgen"
    bin.install "bin/orderer"
    bin.install "bin/peer"
  end

  test do
    system "#{bin}/configtxgen --help"
    system "#{bin}/configtxlator --help"
    system "#{bin}/cryptogen --help"
    system "#{bin}/discover --help"
    system "#{bin}/fabric-ca-client --help"
    system "#{bin}/idemixgen --help"
    system "#{bin}/orderer --help"
    system "#{bin}/peer --help"
  end
end
