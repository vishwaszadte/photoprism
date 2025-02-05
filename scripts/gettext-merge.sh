#!/usr/bin/env bash

echo "Merging backend translations..."
for file in ./assets/locales/**/*.po; do msgmerge --previous --no-location --no-wrap --update "${file}" ./assets/locales/messages.pot; done

echo "Merging frontend translations..."
for file in ./frontend/src/locales/*.po; do msgmerge --previous --no-location --no-wrap --update "${file}" ./frontend/src/locales/translations.pot; done

echo "Done."