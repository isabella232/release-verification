find . -name simulator.properties | xargs sed -i "s/VERSION_SPEC=maven=3.8.6/VERSION_SPEC=maven=3.9-SNAPSHOT/g"
