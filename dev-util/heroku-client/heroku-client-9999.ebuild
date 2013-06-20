# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="CLI tool for creating and managing Heroku apps"
HOMEPAGE="https://www.heroku.com/"
SRC_URI="http://assets.heroku.com.s3.amazonaws.com/${PN}/${PN}.tgz"

LICENSE="AS-IS"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-vcs/git
	dev-lang/ruby:1.9"

S="${WORKDIR}"/${PN}

src_install() {
	dodir /opt
	cp -R "${S}" "${D}/opt/" || die "Install failed"
	dosym "/opt/${PN}/bin/heroku" "/usr/bin/heroku"
}

