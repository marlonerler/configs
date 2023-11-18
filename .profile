export PATH=$PATH:/home/lvm/.bun/bin

cmt() {
	git add .
	git commit -m "$1"
}
