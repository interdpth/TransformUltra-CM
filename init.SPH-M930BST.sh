#!/system/bin/sh
# Copyright (c) 2009-2010, Code Aurora Forum. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Code Aurora nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

start gpsone_daemon

ln -s  /system/usr/keychars/stealth_keypad_qwerty.kcm.bin /system/usr/keychars/stealth_keypad.kcm.bin

# Dynamic Memory Managment (DMM) provides a sys file system to the userspace
# that can be used to plug in/out memory that has been configured as unstable.
# This unstable memory can be in Active or In-Active State.
# Each of which the userspace can request by writing to a sys file.

# ro.dev.dmm = 1; Indicates that DMM is enabled in the Android User Space. This
# property is set in the Android system properties file.

# ro.dev.dmm.dpd.start_address is set when the target has a 2x256Mb memory
# configuration. This is also used to indicate that the target is capable of
# setting EBI-1 to Deep Power Down or Self Refresh.

mem="/sys/devices/system/memory"
op=`cat $mem/movable_start_bytes`
case "$op" in
   "0" )
        log -p i -t DMM DMM Disabled. movable_start_bytes not set: $op
    ;;

    "$mem/movable_start_bytes: No such file or directory " )
        log -p i -t DMM DMM Disabled. movable_start_bytes does not exist: $op
    ;;

    * )
        log -p i -t DMM DMM available. movable_start_bytes at $op
        movable_start_bytes=0x`cat $mem/movable_start_bytes`
        block_size_bytes=0x`cat $mem/block_size_bytes`
        block=$(($movable_start_bytes/$block_size_bytes))

        echo $movable_start_bytes > $mem/probe
        case "$?" in
            "0" )
                log -p i -t DMM $movable_start_bytes to physical hotplug succeeded.
            ;;
            * )
                log -p e -t DMM $movable_start_bytes to physical hotplug failed.
                return 1
            ;;
        esac

       chown system system $mem/memory$block/state

        echo online > $mem/memory$block/state
        case "$?" in
            "0" )
                log -p i -t DMM \'echo online\' to logical hotplug succeeded.
            ;;
            * )
                log -p e -t DMM \'echo online\' to logical hotplug failed.
                return 1
            ;;
esac

        setprop ro.dev.dmm.dpd.start_address $movable_start_bytes
        setprop ro.dev.dmm.dpd.block $block
    ;;
esac

        op=`cat $mem/low_power_memory_start_bytes`
        case "$op" in
            "0" )
                log -p i -t DMM Self-Refresh-Only Disabled. low_power_memory_start_bytes not set:$op
            ;;

            "$mem/low_power_memory_start_bytes No such file or directory " )
                log -p i -t DMM Self-Refresh-Only Disabled. low_power_memory_start_bytes does not exist:$op
            ;;

            * )
                log -p i -t DMM Self-Refresh-Only available. low_power_memory_start_bytes at $op
            ;;
        esac
        ;;
