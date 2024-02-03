# General
cmt() {
	git add .
	git commit -m "$1"
}

init() {
	mkdir $1
	cd $1
	npm init -y
	npm install\
		express\
		@types/node\
		@types/express\

	touch index.ts
}

bld() {
	esbuild index.ts --bundle --outfile=out.js --platform=node
}

run() {
	clear
	
	bld
	echo "-- BUILD COMPLETE --"
	echo
	
	node out.js
}
