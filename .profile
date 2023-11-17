export PATH=$PATH:/root/.bun/bin

tse() {
	tsc
	node index.js
}

cmt() {
	git add .
	git commit -m "$1"
}
