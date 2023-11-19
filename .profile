export PATH=$PATH:/home/lvm/.bun/bin:/home/lvm/.deno/bin

# General
cmt() {
	git add .
	git commit -m "$1"
}

init() {
	mkdir $1
	cd $1
	npm init -y
	npm link @types/node
	npm link basic-html-templates
	npm link busboy
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

# Tools
msg() {
	old=$PWD
	cd ~/Private/Messaging
	vim message
	run
	cd $old
	clear
	echo done
}
