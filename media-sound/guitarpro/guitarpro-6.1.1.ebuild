# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

BUMP="10791"

DESCRIPTION="The Guitar Pro tablature editor"
HOMEPAGE="http://www.guitar-pro.com/en/index.php"
SRC_URI="gp6-full-linux-r${BUMP}.tar.gz"

LICENSE="EULA"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="
	app-emulation/emul-linux-x86-soundlibs
	app-emulation/emul-linux-x86-qtlibs
	media-sound/pulseaudio
	${DEPEND}"

S="${WORKDIR}"

function src_install() {
	cp -R "${WORKDIR}/opt/" "${D}/opt/" &&
	cp -R "${WORKDIR}/usr/" "${D}/usr/" &&
	rm "${D}/opt/GuitarPro6/libz.so.1" &&
	rm "${D}/opt/GuitarPro6/libphonon.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtCore.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtDBus.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtGui.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtNetwork.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtOpenGL.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtSvg.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtWebKit.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtXmlPatterns.so.4" &&
	rm "${D}/opt/GuitarPro6/libQtXml.so.4" || die "Install failed"
	dosym /opt/GuitarPro6/launcher.sh /usr/bin/GuitarPro6
}
