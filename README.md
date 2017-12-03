# Photoshelf Test
Java tests not running under android

## Setup

The projects `commonutils` and `photoshelf` must be visible at the same directory level

	+
	|-- commonutils
	|-- photoshelf
	|-- photoshelf_test
	
Create the symbolic links to source files

	./mk_src_tree.sh
	
## Run

Execute gradle

	./gradlew

## Test results

It will be generated an HTML report if some test fails.

Inspect the "Standard Output" tab to see the expected and found result