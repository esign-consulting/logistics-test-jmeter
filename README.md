# logistics-test-jmeter

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Build status](https://github.com/esign-consulting/logistics-test-jmeter/workflows/Java%20CI/badge.svg)](https://github.com/esign-consulting/logistics-test-jmeter/actions?query=workflow%3A%22Java+CI%22)

Project for load testing the [Logistics](https://github.com/esign-consulting/logistics) application. The test is based on [Apache JMeter](https://jmeter.apache.org) and is executed through the [JMeter Maven Plugin](https://github.com/jmeter-maven-plugin/jmeter-maven-plugin) on top of [Maven](https://maven.apache.org) **(installation required)**. To open the [Logistics JMeter test plan](src/test/jmeter/test-plan.jmx) in JMeter GUI, execute:

`mvn jmeter:configure jmeter:gui -DguiTestFile=src/test/jmeter/test-plan.jmx`

## Test Execution

In order to run the test, execute the command below, replacing *<logistics_host>* and *<logistics_port>* with the hostname/ip and port where the Logistics application is available ("clean" is for deleting previous results):

`mvn clean verify -Dserver.host=<logistics_host> -Dserver.port=<logistics_port>`

The command `mvn clean verify -Dserver.host=esign.com.br -Dserver.port=80`, for example, executes the test against the instance of the application at <http://www.esign.com.br/logistics>.

You can also execute `docker-compose up -d` to run the Logistics application locally. Then, run the test against it: `mvn clean verify -Dserver.host=localhost -Dserver.port=8080`.

## Test Results

The test .cvs results file is placed in the folder *target/jmeter/results*. During the test execution, if the error rate is greater than 1%, the test fails. This configuration can be changed by modifying the value of *errorRateThresholdInPercent* in the [pom.xml](pom.xml) file.
