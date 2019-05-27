

nohup sh elasticsearch/bin/elasticsearch -E http.host=0.0.0.0 --quiet &
nohup sh kibana/bin/kibana --host 0.0.0.0 -Q &

java -jar /websocket-demo.jar



curl -X PUT "localhost:9200/feelingsindexr" -H 'Content-Type: application/json' -d'
{
   "mappings": {
        "city": {
            "properties": {
                "feeling": {"type": “short”},
                "location": {"type": "geo_point"}
            }
        }
    }
}


curl -XPOST http://localhost:9200/feelingsindexr/ -d 
'{"feeling": 1,"location": {"lat": "30.075303", "lon": "31.019886"}}'

