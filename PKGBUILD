# Maintainer: Harshil Anuwadia <your-email@example.com>
# Package: ultimategreet
# Version: 1.0.0
# Description: A script for greeting users on terminal
# License: MIT
# URL: https://github.com/Harshil-Anuwadia/UltimateGreet

pkgname=ultimategreet
pkgver=1.0.0
pkgrel=1
pkgdesc="A script for greeting users on terminal"
arch=('any')
url="https://github.com/Harshil-Anuwadia/UltimateGreet"
license=('MIT')
depends=()
makedepends=()
source=("https://github.com/Harshil-Anuwadia/UltimateGreet/archive/refs/tags/v1.0.0.tar.gz?raw=true")
sha256sums=('SKIP')

# Function to install the scripts
package() {
    cd "$srcdir/UltimateGreet-$pkgver"
    
    # Install the installer script
    install -Dm755 ug_installer.sh "$pkgdir/usr/bin/ug_installer"
    
    # Install the uninstaller script
    install -Dm755 ug_uninstaller.sh "$pkgdir/usr/bin/ug_uninstaller"
    
    # Install the wrapper script (ultimategreet command)
    install -Dm755 ultimategreet "$pkgdir/usr/bin/ultimategreet"
}
