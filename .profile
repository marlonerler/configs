export PATH=$PATH:/home/lvm/.bun/bin:/home/lvm/.deno/bin

cmt() {
	git add .
	git commit -m "$1"
}

bld() {
	esbuild index.ts --bundle --outfile=out.js
}

run() {
	clear
	
	bld
	echo "-- BUILD COMPLETE --"
	echo
	
	node out.js
}
