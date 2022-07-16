#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# モナコ員のトランザクション用DBを作成する。
# CreatedAt: 2022-07-09
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	local ADDRESS=MEHCqJbgiNERCH3bRAtNSSD9uxPViEX1nu
	cd "$HERE"
	for file in `cd create; ls -1 | grep .sql | sort`; do
		echo $file
		sqlite3 ${ADDRESS}.sqlite3 < ./create/$file
	done
	sqlite3 ${ADDRESS}.sqlite3 -batch '.tables'
	sqlite3 ${ADDRESS}.sqlite3 -batch 'select sql from sqlite_master;'
	# https://qiita.com/m-sakano/items/7f1afc7eb452a1a57015
	# select edit('AAA', 'vim'); したあと表示が壊れるので
	stty sane
}
Run "$@"
