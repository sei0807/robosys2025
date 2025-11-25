#!/bin/bash
# SPDX-FileCopyrightText: 2025 Seiya Ohata
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(echo "Dog Cat Dog" | ./freq)
ans="Cat 1
Dog 2"
[ "${out}" = "${ans}" ] || ng "$LINENO"

out=$(echo | ./freq)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
