# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KMNAME="kde-wallpapers"
KDE_AUTODEPS="false"
KDE_SCM="svn"
inherit kde5

DESCRIPTION="KDE wallpapers"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="$(add_frameworks_dep extra-cmake-modules)"
RDEPEND="!kde-apps/kde-wallpapers:4"

PATCHES=( "${FILESDIR}/${PN}-15.08.0-kf5-port.patch" ) # bug 559156

src_configure() {
	local mycmakeargs=( -DWALLPAPER_INSTALL_DIR="${EPREFIX}/usr/share/wallpapers" )

	kde5_src_configure
}
