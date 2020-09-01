Karate with Gatling.

API Performance Testing Made Simple.

Capabilities

    1. Re-use Karate tests as performance tests executed by Gatling
    2. Use Gatling (and Scala) only for defining the load-model, everything else can be in Karate
    3. Karate assertion failures appear in Gatling report, along with the line-numbers that failed
    4. Leverage Karate's powerful assertion capabilities to check that server responses are as expected under load - which is much harder to do in Gatling and other performance testing tools
    5. API invocation sequences that represent end-user workflows are much easier to express in Karate.

You can manually invoke the Gatling plugin from the command-line by using.

"mvn clean test-compile gatling:test".

For better understanding, you may refer to this blog.

Refernce:-
https://github.com/intuit/karate/tree/master/karate-gatling#karate-gatling





