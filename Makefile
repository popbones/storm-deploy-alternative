JAR = target/storm-deploy-alternative-1.jar

clean:
	mvn clean

build: clean
	mvn package

deploy:
	java -jar $(JAR) deploy $(cluster)

kill:
	java -jar $(JAR) kill $(cluster)

attach:
	java -jar $(JAR) attach $(cluster)

scale:
	java -jar $(JAR) scaleout $(cluster) $(count) $(type)