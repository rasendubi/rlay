# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MY_PN="idea-IC"
MY_PV="129.451"
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="IntelliJ IDEA Community Edition is the open source version of IntelliJ IDEA, a premier IDE for Java, Groovy and other programming languages."
HOMEPAGE="http://www.jetbrains.com/idea/index.html"
SRC_URI="http://download.jetbrains.com/idea/${P}.tar.gz"

LICENSE="apache"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${WORKDIR}/${MY_P}"

DEPEND="virtual/jdk:1.6"
RDEPEND="${DEPEND}"

src_install() {
	dodir /opt
	cp -R "${S}/" "${D}/opt/" || die "Install failed"
	dosym /opt/${MY_P}/bin/idea.sh /usr/bin/idea-ic
}

pkg_postinst() {
	elog "To adjust the value of JVM heap size open"
	elog "/opt/${MY_P}/bin/idea.vmoptions,"
	elog "(/opt/${MY_P}/bin/idea64.vmoptions for 64-bit JDK)"
	elog "and modify the -Xms and -Xmx parameters."
}

