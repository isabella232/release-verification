# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias dirSize='du -hs * | sort -h'
alias jpsdir="jps -q | xargs pwdx"

function gcViewerPic() {
   find . -name verbosegc.log | xargs -n1 -I% sh -c "java -jar $(find ~/.m2 -name gcviewer-1.34.1.jar) % %.csv %.png"
}

function jpscwd() {
   jpsdir  | grep $(pwd)
}

function killjavahear() {
   jpsdir | grep $(pwd) | awk '{print $1}' | sed s'/://' | xargs kill -9
}

export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=1g"

#export JAVA_HOME=~/jdk1.7.0_80/
export JAVA_HOME=~/jdk1.8.0_92/
PATH=$JAVA_HOME/bin:$PATH

export SLACK_HOOK_URL='https://hooks.slack.com/services/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'
export SLACK_BOTNAME='danny c'

export HAZELCAST_EE_KEY="HazelcastEnterpriseHD#9999Nodes#RiUHNE1lOrwITY7F5K3VAm539qt3h099W999C99999xn999PsQ1Pv19q39h0"


export AWS_ACCESS_KEY=AKIAI4KSDRAWXPICGAIQ
export AWS_SECRET_KEY=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


export HAZELCAST_HOME=~/hazelcast
export HAZELCAST_EE_HOME=~/hazelcast-enterprise

export SIM_EE_TEST_HOME=~/hazelcast-ee-simulator-tests
export SIM_EE_TEST_DIR=$SIM_EE_TEST_HOME/deploy/content


export HZ_CLUSTER=~/hzCmd
export HZ_CLUSTER_GO=$HZ_CLUSTER/src/main/java/bin
PATH="${HZ_CLUSTER_GO}:${PATH}"



for i in $( ls -d ~/toolsBin/*/  ); do
 PATH=$PATH:$i
done


export EDITOR=nano


export ACTIVE_MQ_BIN=~/apache-activemq-5.13.0/bin
PATH=${PATH}:${ACTIVE_MQ_BIN}
export HZ_CMD=~/hzCmd/bin
export HZ_CMD_BIN=~/hzCmd/target
PATH="${HZ_CMD}:${PATH}"

export HZ_CMD_SRC=~/hzCmd

export HZ_CMD_BENCH_SRC=~/hzCmd-bench
export HZ_CMD_BENCH_BIN=${HZ_CMD_BENCH_SRC}/bin
PATH="${PATH}:${HZ_CMD_BENCH_BIN}"
