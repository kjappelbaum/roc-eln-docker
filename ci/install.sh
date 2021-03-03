jq --arg sub "http://$COUCHDB_HOST:5894" '.couchLocalUrl |= sub("http://couchdb:5984/"; $sub)' flavor-builder-config.json > flavor-builder-config.json
cd ./rest-on-couch/home && 
curl -L https://github.com/cheminfo/roc-visualizer-config/archive/master.tar.gz | tar xz && 
mv roc-visualizer-config-master visualizer && 
curl -L https://github.com/cheminfo/roc-eln-config/archive/master.tar.gz | tar xz &&  
mv roc-eln-config-master eln && 
cd eln && 
npm i && 
cd .. && 
curl -L https://github.com/cheminfo/roc-printers-config/archive/master.tar.gz | tar xz && 
mv roc-printers-config-master printers && 
cd ../..

