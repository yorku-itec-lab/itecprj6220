const pregel = require("@arangodb/pregel")
var graph_module = require("@arangodb/general-graph")
var fs = require("fs");

if (graph_module._exists("bitcoin")){
  graph_module._drop("bitcoin")
}

var graph = graph_module._create("bitcoin");

graph._addrateCollection("rate");
var rel = graph_module._relation("edge", ["rate"], ["rate"]);
graph._extendEdgeDefinitions(rel);

var totalTime = 0;
var total = 0;

for (var i=0; i<3; i++) {
  var handle = pregel.start("rating", "bitcoin", {maxGSS: 10, resultField:"rating"});
  
  total++;

print("computing rating: Test # " + total);  
while (!["done", "canceled"].includes(pregel.status(handle).state)) {
    print("waiting to complete... Test # " + total);
    require("internal").wait(0.5); 
  }

 
 var status = pregel.status(handle);
 print(status);
 if (status.state == "done") {
   totalTime += status.totalRuntime;
   fs.writeFileSync("ratingResults_bitcoin_" + i, "Test#" + i + ", " + status.totalRuntime+" s");
 }


}

print("SUMMARY rating for bitcoin:");
print("Total time, s: " + totalTime);
print("Total number of tests: " + total);
print("Avg time, s: ", totalTime/total);
fs.writeFileSync("ratingResults_bitcoin", "Avg time, s: " + totalTime/total);