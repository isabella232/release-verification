# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export MAVEN_HOME=~/apache-maven-3.3.3
PATH=$MAVEN_HOME/bin:$PATH

#export _JAVA_OPTIONS='-javaagent:/home/danny/jHiccup-2.0.2/jHiccup.jar="-d 10000 -i 1000"'
#export JAVA_HOME=~/jdk1.8.0_45/
export JAVA_HOME=~/jdk1.7.0_80/
PATH=$JAVA_HOME/bin:$PATH
PATH=/home/danny/jHiccup-2.0.2:$PATH

export HAZELCAST_HOME=~/hazelcast
export HAZELCAST_EE_HOME=~/hazelcast-enterprise
export HAZELCAST_EE_KEY="<license-key>Hazelcast Enterprise#9999 Nodes#9999 Clients#HD Memory: 99999999GB#w7yAkRj1IbHcBfVimEOuKr638599939999peZ319999z05999Wn149zGxG09<\/license-key>"

export SIM_EE_TEST_HOME=~/hazelcast-ee-simulator-tests
export SIM_EE_TEST_DIR=$SIM_EE_TEST_HOME/deploy/content

#export SIMULATOR_ROOT=~/hazelcast-simulator
#export SIMULATOR_VERSION=0.7-SNAPSHOT
#export SIMULATOR_HOME=$SIMULATOR_ROOT-$SIMULATOR_VERSION
#PATH="${SIMULATOR_HOME}/bin:${PATH}"

for i in $( ls -d ~/toolsBin/*/  ); do
 PATH=$PATH:$i
done

export IGNITE_HOME=~/ignite
export YARD_HZ=~/yardstick-hazelcast
export YARD_IG=~/yardstick-ignite
export RADARGUN_HOME=~/RadarGun-bin
PATH=~/RadarGun-bin/bin:$PATH
export RADARGUN_HOME=~/RadarGun-bin
PATH=~/RadarGun-bin/bin:$PATH
export RADARGUN_HOME=~/RadarGun-bin
PATH=~/RadarGun-bin/bin:$PATH
