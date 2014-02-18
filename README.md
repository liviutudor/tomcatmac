tomcatmac
=========

Running Tomcat on a mac on port 80.

This is based on [my blog post](http://liviutudor.com/2012/01/18/running-tomcat-on-port-80-on-a-mac-shell-script/#sthash.gPjuNrkx.dpbs) which presented a little utility script to set up port forwarding on a Mac OS X which forwards the requests from port 8080 (the standard port Tomcat runs on) to port 80, thus allowing access to the Tomcat instance running on the Mac machine via port 80 (standard HTTP port).

Best way to use this script (I found) is to check out the repo in a directory (e.g. `~/Documents/git/tomcatmac`) then symlink it from `/usr/local/bin`:

```bash
cd /usr/local/bin
ln -s ~/Documents/git/tomcatmac/tomcat_fwd.sh tomcat_fwd.sh
```

Then you can simply turn it on (`tomcat_fwd.sh start`) or off (`tomcat_fwd.sh stop`) -- assuming your `/usr/local/bin` is in your `PATH`.
