#!/bin/bash

sudo grep -Erho '[a-zA-Z0-9_.%+-]+@[a-zA-Z0-9\.-]*\.[[:alpha:]]{2,}' /etc | sort -f | uniq | awk '{print $1 ","}'> etc_emails.lst
