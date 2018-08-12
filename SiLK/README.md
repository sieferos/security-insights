```
# /*
# * README.md
# * sieferos: 12/08/2018
# */
```

- [SiLK Documentation](https://tools.netsa.cert.org/silk/docs.html)
- [SiLK Installation Handbook](https://tools.netsa.cert.org/silk/silk-install-handbook.pdf)
- [Using SiLK for Network Traffic Analysis: Analysts' Handbook](https://tools.netsa.cert.org/silk/analysis-handbook.pdf)
- [Advanced SiLK Analysis FloCon 2014](https://resources.sei.cmu.edu/asset_files/Presentation/2014_017_001_90123.pdf)
- [Network Traffic Analysis - SiLK](https://resources.sei.cmu.edu/asset_files/Presentation/2016_017_001_450656.pdf)
- [SILK Analysis Handbook](https://www.scribd.com/document/83427011/SILK-Analysis-Handbook)

```bash
  $ cd ~/github/sieferos/security-insights/SiLK/ && docker build -t silk:custom .

  $ docker run --rm -it silk:custom

    root@d64e795722c7:~# cd /usr/local/bin/ && ls -1 rw* | sort

rwaddrcount
rwaggbag
rwaggbagbuild
rwaggbagcat
rwaggbagtool
rwallformats
rwappend
rwbag
rwbagbuild
rwbagcat
rwbagtool
rwcat
rwcombine
rwcompare
rwcount
rwcut
rwdedupe
rwfglob
rwfileinfo
rwfilter
rwgeoip2ccmap
rwgroup
rwidsquery
rwip2cc
rwipfix2silk
rwmatch
rwnetmask
rwp2yaf2silk
rwpcut
rwpdedupe
rwpdu2silk
rwpmapbuild
rwpmapcat
rwpmaplookup
rwpmatch
rwptoflow
rwrandomizeip
rwrecgenerator
rwresolve
rwscan
rwscanquery
rwset
rwsetbuild
rwsetcat
rwsetmember
rwsettool
rwsilk2ipfix
rwsiteinfo
rwsort
rwsplit
rwstats
rwswapbytes
rwtotal
rwtuc
rwuniq

    root@d64e795722c7:~# rwfilter --version

rwfilter: part of SiLK 3.17.2; configuration settings:
    * Root of packed data tree:         /data
    * Packing logic:                    Run-time plug-in
    * Timezone support:                 UTC
    * Available compression methods:    none [default], zlib, lzo1x
    * IPv6 network connections:         yes
    * IPv6 flow record support:         yes
    * IPset record compatibility:       1.0.0
    * IPFIX/NetFlow9/sFlow collection:  ipfix,netflow9,sflow
    * Transport encryption:             GnuTLS
    * PySiLK support:                   /usr/lib/python2.7/dist-packages
    * Enable assert():                  no
Copyright (C) 2001-2018 by Carnegie Mellon University
GNU General Public License (GPL) Rights pursuant to Version 2, June 1991.
Some included library code covered by LGPL 2.1; see source for details.
Government Purpose License Rights (GPLR) pursuant to DFARS 252.227-7013.
Send bug reports, feature requests, and comments to netsa-help@cert.org.

    root@d64e795722c7:~# exit
```