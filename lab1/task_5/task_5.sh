#!/bin/bash

cat /var/log/syslog | grep "systemd" > system.log
