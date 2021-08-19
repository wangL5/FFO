# FFO report

## Interaction web

This can be used to create the interaction web of institutions for the annual FFO report. For now, the names of the institutions are not included in the final graph. Each resulting point of the graph represents one institution, color-coded by sector.

The interaction web is used to depict collaboration networks across the science community. The directionality of the arrows indicate the directionality of the collaboration from awarded institutions to collaborating institutions. Each point in the network represents one institution and may represent multiple projects if multiple awards were given to principal investigators from that same institution with the years included in the final report. See [here](https://oeab.noaa.gov/wp-content/uploads/2021/04/ffo-report-2016-2020.pdf) for an example.


### Nodes
id | sector | sector.type
------------ | ------------- | ------------
institution name | sector (i.e. academia) | number assigned to each sector (1-6)

sector.type is used for colorcoing in the subsequent plot.

### Links
from | to | weight
------------ | ------------- | ------------
funded institution | collaborating institution | number of interactions

Institutions may appear multiple times in both "from" and "to" columns.

The weight column consists of numbers, and describes the number of time that interaction occurs (i.e. there are two proposals from University A, and they both propose to collaborate with scientists from University B, then the number would be 2). Weight is not currently implemented in the final interaction graph, but could be used to adjust the size of arrows and points to convey further information.

