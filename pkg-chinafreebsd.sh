#!/bin/sh

#################################################
#
#   chinafreebsd pkg sourece
#   wiki: https://www.chinafreebsd.cn/index.php?title=Pkg_source
#   data: 五  8/25 12:36:48 2017
#
#################################################

#user pkg repos
mkdir -p /usr/local/etc/pkg/repos

#chinafreebsd.conf
touch /usr/local/etc/pkg/repos/4.chinafreebsd.conf

echo 'cfb: {'                          >> /usr/local/etc/pkg/repos/4.chinafreebsd.conf
echo '  url: "pkg+http://pkg1.chinafreebsd.cn/${ABI}/quarterly",'   >> /usr/local/etc/pkg/repos/4.chinafreebsd.conf
echo '  mirror_type: "srv",'                    >> /usr/local/etc/pkg/repos/4.chinafreebsd.conf
echo '  signature_type: "none",'                >> /usr/local/etc/pkg/repos/4.chinafreebsd.conf
echo '  fingerprints: "/usr/share/keys/pkg",'   >> /usr/local/etc/pkg/repos/4.chinafreebsd.conf
echo '  enabled: yes'                           >> /usr/local/etc/pkg/repos/4.chinafreebsd.conf
echo '}'                                        >> /usr/local/etc/pkg/repos/4.chinafreebsd.conf

# update cfb
#pkg update -r cfb

# install sample
#pkg install -r cfb wget

