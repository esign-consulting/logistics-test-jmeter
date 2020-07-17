# logistics-test-jmeter

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Build status](https://travis-ci.org/esign-consulting/logistics-test-jmeter.svg?branch=master)](https://travis-ci.org/esign-consulting/logistics-test-jmeter)

Project for load testing the [Logistics](https://github.com/esign-consulting/logistics) application. The test is based on [Apache JMeter](https://jmeter.apache.org) and is executed through the [JMeter Maven Plugin](https://github.com/jmeter-maven-plugin/jmeter-maven-plugin) on top of [Maven](https://maven.apache.org) **(installation required)**.

## Execution

In order to run the test, execute the command `mvn verify -Dserver.host=<logistics_host> -Dserver.port=<logistics_port>`, replacing *<logistics_host>* and *<logistics_port>* with the hostname/ip and port where the Logistics application is available. The command `mvn verify -Dserver.host=esign.com.br -Dserver.port=80`, for example, executes the test against the instance of the application at <http://www.esign.com.br/logistics>.

## Reports

The test generates reports which are placed in the folder *target/jmeter/reports*. The reports generated during [the test execution in Travis CI](https://travis-ci.org/esign-consulting/logistics-test-jmeter) can be seen [here](http://www.esign.com.br/logistics-test-jmeter/test-plan/index.html). More details about the **JMeter Report Dashboard** can be found in [the official documentation](https://jmeter.apache.org/usermanual/generating-dashboard.html).
