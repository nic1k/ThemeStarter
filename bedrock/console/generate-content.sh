#!/bin/sh

wp acorn vendor:publish --allow-root
wp acorn package:discover --allow-root
wp acorn vendor:publish --provider="Log1x\AcfComposer\Providers\AcfComposerServiceProvider" --allow-root