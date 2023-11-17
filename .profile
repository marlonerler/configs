export PATH=$PATH:/root/.bun/bin

cmt() {
	git add .
	git commit -m "$1"
}
