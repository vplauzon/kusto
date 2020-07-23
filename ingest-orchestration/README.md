#   Ingest Orchestration

Ingestion orchestration with Logic Apps.

[![Deploy button](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fvplauzon%2Fdata-explorer%2Fmaster%2Fingest-orchestration%2Fdeploy.json)

See the [following article](TODO) for details.

•	It would orchestrate the actual ingestion
    o	That means if you stop it, it stops the ingestion (for good)
    o	That also means it would be easier to follow along what is going on
•	It could map a column to the blob path originating the data
•	It could stamp the data with the “date” of the data following the blob path and spark standard year=XYZ/month=ABC/day=WXY, so we could then manage caching / retention 
•	It could be restarted without creating duplicates, essentially continuing where it stopped
