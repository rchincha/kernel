all: kernel

kernel: config stacker.yaml
	stacker build --substitute KERNEL_URL=https://github.com/torvalds/linux --substitute KERNEL_BRANCH=master
