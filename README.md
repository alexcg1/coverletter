# coverletter

Coverletter is a simple script for creating cover letters from the command line. It'll take command line arguments and output a pretty PDF cover letter

## Setup

* Copy coverletter.sh to somewhere in your PATH
* Edit coverletter.sh to reflect your cover letter directory
* Copy generic.md to that directory and edit accordingly. `JOBTITLE` will be replaced with command line arguments when you run the script

## Using the Script

From the command line, just call coverletter.sh with your desired filename (argument 1) and job title (everything after the first argument) for example:

```sh
$ coverletter.sh companyname Head Cook and Bottle Washer
```

It'll grind away for a little while then spit out `companyname.pdf` with the job title inserted in the file, ready for you to send to employers. It'll also copy the plain text to the clipboard for you to paste into a form.

## Requires

* Pandoc
* A text editor
* OpenOffice
