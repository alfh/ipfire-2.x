#!/bin/bash
############################################################################
#                                                                          #
# This file is part of the IPFire Firewall.                                #
#                                                                          #
# IPFire is free software; you can redistribute it and/or modify           #
# it under the terms of the GNU General Public License as published by     #
# the Free Software Foundation; either version 2 of the License, or        #
# (at your option) any later version.                                      #
#                                                                          #
# IPFire is distributed in the hope that it will be useful,                #
# but WITHOUT ANY WARRANTY; without even the implied warranty of           #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            #
# GNU General Public License for more details.                             #
#                                                                          #
# You should have received a copy of the GNU General Public License        #
# along with IPFire; if not, write to the Free Software                    #
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA #
#                                                                          #
# Copyright (C) 2007-2013 IPFire-Team <info@ipfire.org>.                   #
#                                                                          #
############################################################################
#
. /opt/pakfire/lib/functions.sh
remove_files
rm -rf /boot/ipfirerd-*-pae.img
rm -rf /lib/modules/*-ipfire-pae
cp /boot/grub/grub.conf /boot/grub/grub-backup-pae_uninstall.conf
sed -i "/title IPFire (PAE-Kernel)/,+3d" /boot/grub/grub.conf
grub-set-default 1
sync && sync
