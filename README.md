# crystal-oib

This module implements OIB validator in crystal-lang.

OIB stands for _Osobni Identifikacijski Broj (Personal Identification Number)_ which is unique numerical identificator used in Republic of Croatia for denoting both private and legal entities.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystal-oib:
    github: vladimyr/crystal-oib

```

## Usage

```crystal
require "crystal-oib"

OIB.is_valid? "84477684422"
# or
OIB.is_valid? 84477684422
```

## Credits
Inspired by [andreicek/oib.js](https://github.com/andreicek/oib.js) and [MiroslavJelaska/oib-validator.js](https://github.com/MiroslavJelaska/oib-validator.js)