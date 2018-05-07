# logistics-test-jmeter

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Project for load testing the [Logistics](https://github.com/esign-consulting/logistics) application. The test is based on [Apache JMeter](https://jmeter.apache.org) and is executed through [Maven](https://maven.apache.org) **(installation required)**.

In order to run the test, execute the command `mvn verify -Dserver.host=<logistics_host>`, replacing *<logistics_host>* by the hostname where the Logistics application is available. The command `mvn verify -Dserver.host=www.esign.com.br`, for example, executes the test against the instance of the application at http://www.esign.com.br/logistics.

The test generates reports which is placed in the folder *target/jmeter/reports*. Details about the **JMeter Report Dashboard** can be seen in https://jmeter.apache.org/usermanual/generating-dashboard.html.