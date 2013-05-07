# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

DESCRIPTION="Firmware for open source host brcmsmac driver"
HOMEPAGE="http://linuxwireless.org/en/users/Drivers/brcm80211"
EGIT_REPO_URI="git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
	git-2_src_unpack
}

src_install() {
	insinto /lib/firmware/brcm
	doins brcm/bcm43xx_hdr-0.fw brcm/bcm43xx-0.fw
}

