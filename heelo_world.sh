#!/bin/bash
find_allfiles() {
  cd ~
  echo 'Switched to your home directory :D'
  echo 'Searching for files'
  echo 'BEWARE: this could take several minutes, if not longer'
  find -type f -name "*.conf" -exec echo "File Found: " {} \;

  echo 'All .conf files have been found :D'
  exit
}
find_allfiles
