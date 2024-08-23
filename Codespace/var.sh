#!/bin/bash

name="Baek Min Woo"
echo "\${name}=${name}"
echo "length=${#name}"
echo "offset=${name:5}"
echo "\${name}=${name:+Hello}"
echo "\${name}=${name}"
echo "name=${name:-123456}"
echo "name2=${name:-123456}"
echo "name3=${name3:?123456}"
