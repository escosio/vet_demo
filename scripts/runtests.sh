#!/bin/bash

# Run the test suite
echo "+++ Running web tests"
robot --include bvt tests/features/

# Stop the script here if all the tests were OK
if [ $? -eq 0 ]; then
    echo "Tests passed on first try"
    exit 0	
fi

# There seems to be a failure, re-run the tests
echo "+++ Rerunning failed tests"
robot --nostatusrc --rerunfailed output.xml  --output rerun.xml tests/features/

# Merge rerun and output results
echo "+++ Merging results"
rebot --nostatusrc --output output.xml --merge output.xml rerun.xml
echo "Tests are complete"