#!/bin/bash

man bash | tr -cs '[:alpha:]' '\n' | grep -E '^.{4,}$' | sort | uniq -ci | sort -nr | head -3 | awk '{print $2 " - " $1}'