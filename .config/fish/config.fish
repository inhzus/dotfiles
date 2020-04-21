set -x JAVA_HOME /usr/lib/jvm/java-13-openjdk
set -x JRE_HOME $JAVA_HOME/jre
set -x CLASSPATH . $JAVA_HOME/lib $JRE_HOME/lib

set -x GOPATH $HOME/go/
set -x GOPROXY https://goproxy.cn
set -x GO111MODULE on
set -x PROXY http://localhost:7890

set -U fish_user_paths $JAVA_HOME/bin $HOME/.local/bin $HOME/.npm/bin $HOME/.gem/ruby/2.7.0/bin $HOME/go/bin $HOME/scripts

