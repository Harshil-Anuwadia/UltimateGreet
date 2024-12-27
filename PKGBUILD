# Maintainer: Your Name <your-email>
pkgname=ultimategreet
pkgver=1.0.0
pkgrel=1
pkgdesc="UltimateGreet - A powerful greeting script"
arch=('x86_64')
url="https://github.com/Harshil-Anuwadia/UltimateGreet"
license=('MIT')
depends=('bash' 'curl')  # Add any dependencies that your script needs
source=("https://github.com/Harshil-Anuwadia/UltimateGreet/archive/refs/tags/v1.0.0.tar.gz")
sha256sums=('SKIP')  # You can generate this hash with `sha256sum`

package() {
    cd "$srcdir/UltimateGreet-$pkgver"
    install -Dm755 ultimategreet.sh "$pkgdir/usr/bin/ultimategreet"
    # Any other files you want to include can be installed here
}
