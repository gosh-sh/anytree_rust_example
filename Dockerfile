FROM rust:1.71.0
WORKDIR /usr/src/anytree_test_project
COPY . .
RUN --mount=type=bind,source=./.gosh/cargo/registry,target=/usr/local/cargo/registry  \
    --mount=type=bind,source=./.gosh/cargo/git,target=/usr/local/cargo/git  \
	cargo install --offline --path .
CMD ["anytree-test-project"]

