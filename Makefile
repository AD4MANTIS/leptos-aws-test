hello:
	echo "Hello, World"

lambda-build:
	LEPTOS_OUTPUT_NAME=ad4-leptos-aws-test cargo lambda build --no-default-features --features=ssr --release

lambda-deploy:
	cargo lambda deploy --lambda-dir target/lambda --enable-function-url --profile ad4mantis