# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricTools < Formula
    desc "Hyperledger Fabric native binaries installer"
    homepage "https://hyperledger.org/projects/fabric"
    url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric-ca/hyperledger-fabric-ca/darwin-amd64-1.4.0/hyperledger-fabric-ca-darwin-amd64-1.4.0.tar.gz"
    version "1.4.0"
    sha256 "f28cc5ee2d2c9f1df10168125f38b75639f14503fe723f8730ca4325c2eb4ce1"

    def install
        bin.install "bin/fabric-ca-client"
    end

    test do
        system "#{bin}/fabric-ca-client --help"
    end
end

