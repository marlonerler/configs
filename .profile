export PATH=$PATH:/home/lvm/.bun/bin:/home/lvm/.deno/bin

cmt() {
	git add .
	git commit -m "$1"
}
