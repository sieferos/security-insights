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
- [Dockerfile (logan2211)](https://github.com/logan2211/docker-silk/blob/master/Dockerfile)

```bash
  $ cd ~/github/sieferos/security-insights/SiLK/ && docker build -t silk:custom .

  $ cd ~/github/sieferos/security-insights/ && docker run --rm -it -v $(pwd)/pcap:/pcap silk:custom

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

    root@d64e795722c7:~# rwptoflow /pcap/samples/47f5bdd9-b1cb-42e9-bff2-a427b0db8c94.pcap | rwcount

    Date|        Records|               Bytes|          Packets|
2018/12/02T15:04:30|          13.00|             1396.00|            13.00|
2018/12/02T15:05:00|           0.00|                0.00|             0.00|
2018/12/02T15:05:30|          15.00|              975.00|            15.00|
2018/12/02T15:06:00|           4.00|              284.00|             4.00|
2018/12/02T15:06:30|           6.00|              381.00|             6.00|
2018/12/02T15:07:00|           5.00|              355.00|             5.00|
2018/12/02T15:07:30|           1.00|               71.00|             1.00|
2018/12/02T15:08:00|           4.00|              284.00|             4.00|
2018/12/02T15:08:30|           5.00|              355.00|             5.00|
2018/12/02T15:09:00|           0.00|                0.00|             0.00|
2018/12/02T15:09:30|          14.00|             1504.00|            14.00|
2018/12/02T15:10:00|          17.00|             1444.00|            17.00|
2018/12/02T15:10:30|          18.00|             1181.00|            18.00|
2018/12/02T15:11:00|          23.00|             1757.00|            23.00|
2018/12/02T15:11:30|          16.00|             1272.00|            16.00|
2018/12/02T15:12:00|          11.00|              713.00|            11.00|
2018/12/02T15:12:30|           4.00|              284.00|             4.00|
2018/12/02T15:13:00|           2.00|              111.00|             2.00|
2018/12/02T15:13:30|           5.00|              355.00|             5.00|
2018/12/02T15:14:00|           1.00|              229.00|             1.00|
2018/12/02T15:14:30|           5.00|              355.00|             5.00|

    root@d64e795722c7:~# rwptoflow /pcap/samples/47f5bdd9-b1cb-42e9-bff2-a427b0db8c94.pcap | rwstats --overall-stats

FLOW STATISTICS--ALL PROTOCOLS:  169 records
*BYTES min 40; max 576
  quartiles LQ 66.04317 Med 78.12950 UQ 90.21583 UQ-LQ 24.17266
   interval_max|count<=max|%_of_input|   cumul_%|
             40|         8|  4.733728|  4.733728|
             60|        13|  7.692308| 12.426036|
            100|       139| 82.248521| 94.674556|
            150|         0|  0.000000| 94.674556|
            256|         3|  1.775148| 96.449704|
           1000|         6|  3.550296|100.000000|
          10000|         0|  0.000000|100.000000|
         100000|         0|  0.000000|100.000000|
        1000000|         0|  0.000000|100.000000|
     4294967295|         0|  0.000000|100.000000|
*PACKETS min 1; max 1
  quartiles LQ 0.74556 Med 1.49112 UQ 2.23669 UQ-LQ 1.49112
   interval_max|count<=max|%_of_input|   cumul_%|
              3|       169|100.000000|100.000000|
              4|         0|  0.000000|100.000000|
             10|         0|  0.000000|100.000000|
             20|         0|  0.000000|100.000000|
             50|         0|  0.000000|100.000000|
            100|         0|  0.000000|100.000000|
            500|         0|  0.000000|100.000000|
           1000|         0|  0.000000|100.000000|
          10000|         0|  0.000000|100.000000|
     4294967295|         0|  0.000000|100.000000|
*BYTES/PACKET min 40; max 576
  quartiles LQ 66.04317 Med 78.12950 UQ 90.21583 UQ-LQ 24.17266
   interval_max|count<=max|%_of_input|   cumul_%|
             40|         8|  4.733728|  4.733728|
             44|         0|  0.000000|  4.733728|
             60|        13|  7.692308| 12.426036|
            100|       139| 82.248521| 94.674556|
            200|         0|  0.000000| 94.674556|
            400|         8|  4.733728| 99.408284|
            600|         1|  0.591716|100.000000|
            800|         0|  0.000000|100.000000|
           1500|         0|  0.000000|100.000000|
     4294967295|         0|  0.000000|100.000000|

    root@d64e795722c7:~# exit
```
