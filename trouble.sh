#!/bin/bash -x

# An example script showing errors to avoid

# First, take a look at the shebang. The -x will display
# each line that is executed. This is called tracing.
# Alternatively, you can use set.

# Turn on trace
set -x

number=

# Embded vars in strings if vars have no value
# This fixes potential errors when nil is passed to expression
if [ "$number" = "1" ]; then
	echo "Number equals 1"
else
	echo "Number does not equal 1"
fi

# turn off trace
set +x

