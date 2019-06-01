#!/bin/bash
find . -regex '.*\.\(aux\|log\|vrb\|toc\|gz\|nav\|out\|snm\)' -delete
find . -name "*.pdf" -delete
