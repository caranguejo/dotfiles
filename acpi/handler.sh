#!/bin/bash
# Default acpi script that takes an entry for all actions

case "$1" in
	button/mute)
        case "$2" in
            MUTE)
                amixer sset Master toggle
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
	button/volumedown)
        case "$2" in
            VOLDN)
                amixer sset Master 5%- unmute
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
	button/volumeup)
        case "$2" in
            VOLUP)
                amixer sset Master 5%+ unmute
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
	cd/prev)
        case "$2" in
            CDPREV)
                playerctl previous
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
	cd/play)
        case "$2" in
            CDPLAY)
		playerctl play-pause
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
	cd/next)
        case "$2" in
            CDNEXT)
		playerctl next
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    esac
    ;;
    *)
        logger "ACPI group/action undefined: $1 / $2"
        ;;
esac

# vim:set ts=4 sw=4 ft=sh et:
