nsnitro
-------
[![Build Status](https://travis-ci.org/matt-deboer/go-nsnitro.svg?branch=master)](https://travis-ci.org/matt-deboer/go-nsnitro)

A NetScaler 10+ Nitro API cli

### example

```
export NSNITRO_SERVER=http://10.11.12.13
export NSNITRO_USERNAME=api_user
export NSNITRO_PASSWORD=api_user

make
bin/nsnitro help
bin/nsnitro show version
bin/nsnitro show server
bin/nsnitro show lb vserver
bin/nsnitro show lb monitor
```
