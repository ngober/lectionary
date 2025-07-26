## Lectionary

"Freely you received, freely give"

![Freely Given](https://copy.church/badges/lcc_alt_pde.svg)

This work is an act of love to my family and is dedicated to the public domain, so that other families may also be blessed.

### Requirements

The state of this project is currently "works on my machine" and may need some configuring that is not listed here. At minimum, this project requires:

 - SCons
 - LaTeX
 - Lilypond 2.21
 - The following python libraries
   - jinja2
   - pyyaml
   - pythonbible
   - requests
 - An ESV API key, contained in the file `esv_api.key`.

### Usage

There are two build modes: Single and Full. A single build contains the readings and prayers for a single week. The full build contains all weeks.

Single build (example):

    scons single/advent1.pdf

Full build:

    scons full/full.pdf

### Attributions

Many of the readings are given in the Book of Common Prayer or the Revised Common Lectionary.
