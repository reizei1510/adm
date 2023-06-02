#!/bin/bash
PLANET=$1
case "$PLANET" in
  'Mercury' ) echo -n "0";;
  'Venus' ) echo -n "0";;
  'Earth' ) echo -n "1";;
  'Mars' ) echo -n "2";;
  'Jupiter' ) echo -n "95";;
  'Saturn' ) echo -n "146";;
  'Uranus' ) echo -n "27";;
  'Neptune' ) echo -n "14";;
  'Pluto' ) echo -n "5";;
  *) echo -n "unknown planet";;
esac
