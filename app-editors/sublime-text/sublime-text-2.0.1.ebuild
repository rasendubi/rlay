# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Sublime Text is a sophisticated text editor for code, markup and prose."
HOMEPAGE="http://sublimetext.com/"
SRC_URI="
	x86?   ( http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20${PV}.tar.bz2 )
	amd64? ( http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20${PV}%20x64.tar.bz2 )"

LICENSE="EULA"
SLOT="2"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/libX11"
RDEPEND="${DEPEND}"

S="${WORKDIR}/Sublime Text 2"

src_install() {
	dodir /opt
	cp -R "${S}/" "${D}/opt/" || die "Install failed"
	dosym "/opt/Sublime Text 2/sublime_text" "/usr/bin/sublime_text"
}
