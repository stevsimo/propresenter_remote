#
# Makefile for CI/CD Environments and commandline users
#

# Run app
run:
	flutter run --web-port 55130 --web-browser-flag "--disable-web-security"


# Format & Lint
clean:
	flutter clean
	flutter pub get
	make build-runner
	make format
format:
	dart format . --line-length 120
lint:
	flutter analyze

# Testing
test:
	flutter test --coverage -r expanded
.PHONY: test
test-ci:
	flutter test --machine --coverage -r expanded --file-reporter "json:tests.json" | tojunit --output report.xml
	genhtml coverage/lcov.info --output=coverage

# Build runner
build-runner:
	flutter pub run build_runner build --delete-conflicting-outputs
build-runner-watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

# Additional helpers
packages-outdated:
	flutter pub outdated
packages-upgrade:
	flutter pub upgrade
l10n:
	flutter gen-l10n
appicon:
	flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
splashscreen:
	flutter pub run flutter_native_splash:create --path=flutter_native_splash.yaml

# Export Archives .ipa, .aab, .apk and web
# build web
build-web:
	@echo "Building Web ..."
	make clean
	mkdir -p dist
	rm -rf dist/web
	flutter build web --release
	cp -r build/web dist/web
release-web:
	@echo "Release Web"
	vercel build
	vercel deploy --prebuilt

# build .apk
build-apk:
	@echo "Building Android .apk ..."
	make clean
	flutter build apk --target-platform=android-arm,android-arm64 --obfuscate --split-debug-info=./dist/debug/
	cp build/app/outputs/bundle/release/app-release.apk dist/
build-appbundle:
	@echo "Building Android .aab ..."
	make clean
	flutter build appbundle --obfuscate --split-debug-info=./dist/debug/
	cp build/app/outputs/bundle/release/app-release.aab dist/
# build .ipa
build-ios:
	@echo "Building Apple iOS ..."
	make clean
	rm -rf ios/dist
	flutter build ipa --obfuscate --split-debug-info=./dist/debug/ --export-options-plist=ios/ios-export-options.plist --suppress-analytics
	cp build/ios/ipa/meteosol.ipa dist/meteosol.ipa
