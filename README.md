# Context-aware Code Examples Recommendation for Opportunistic Reuse
This repository contains the jar file including code that allows us to replicate the results of experiments performed using FACER and its context-aware variants.

## CA-FACER Replication Instructions
The following setup instructions are for Windows OS.
### Installation Pre-requisites:
Java (https://www.java.com/en/download/)

Configure path variables in your System's Environment Variables for <your root>\Java\jdk1.8.0_73\bin

### Running CA-FACER Replication jar
To run program analyzer you need to supply configuration parameters as arguments. For example,
  
```
<your root>\FACER_Replication_Pack>java -jar cafacer_results_replication.jar  C0 G0 1 5 0 0
```
Parameter 1 specifies context configuration which can be C0, C1, C2 or C3
Parameter 2 specified ground truth configuration which can be G0, G1, G2 or G3
Parameter 3 specifies the strategy used where 1= baseline FACER, 2= FACER with post-filtering, 3= FACER with pre-filtering, 4= Hybrid CA-FACER
Parameter 4 specifies the Nrecs; top N number of recommendations and can be 5, 10 or 15
Parameter 5 specifies the gamma value of sensitivity thresg=hold for pre-filtering
Parameter 6 specifies the top K number of projects used for pre-filtering
  
We provide some rules for the parameters to be used as arguments for various experiments as follows:
#### Baseline FACER  
  context will always be C0, groundtruth can be G0, G1, G3 and G4, strategy will be 1, Nrecs can be 5 10 or 15, last two arguments will be 0
  
#### Post-filtering FACER  
  context can be C1, C2, C3, ground truth will correspond to context, if C1 then G1 if C2 then G2 if C3 then G3, strategy will be 2, Nrecs can be 5 10 15, last two args will be 0
  
#### Pre-filtering FACER 
   * context can be C1, C2, C3
	 * ground truth will correspond to context, if C1 then G1 if C2 then G2 if C3 then G3
	 * strategy will be 3 
	 * Nrecs can be 5 10 15 
	 * gamma can be 0.3 or 0.5 or 0. or 0.9
	 * Nprojs can be 10 or 20
  
#### Hybrid CA-FACER
   context can be C1, C2, C3
	 * ground truth will correspond to context, if C1 then G1 if C2 then G2 if C3 then G3
	 * strategy will be 4 
	 * Nrecs can be 5 10 15 
	 * gamma will be 0.7
	 * Nprojs will be 10
	 * e.g. C1 G1 4 5 0.7 10
  
#### Context size experiments with CA-FACER
  
   * strategy will be 4 
	 * Nrecs will be 10 
	 * gamma will be 0.7
	 * Nprojs will be 10
	 * C1 G2 4 10 0.7 10
	 * C2 G2 4 10 0.7 10
	 * C2 G3 4 10 0.7 10
	 * C3 G3 4 10 0.7 10
