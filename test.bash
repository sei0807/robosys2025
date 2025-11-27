#!/bin/bash
# SPDX-FileCopyrightText: 2025 Seiya Ohata
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(echo "Dog Cat Dog" | ./freq)
ans="Dog 2
Cat 1"
[ "${out}" = "${ans}" ] || ng "$LINENO"

out=$(echo | ./freq)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo "B A C" | ./freq)
ans="A 1
B 1
C 1"

[ "${out}" = "${ans}" ] || ng "$LINENO"
./freq < . > /dev/null 2>&1
[ "$?" -ne 0 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
