




## Ubuntu Core image for Zybo

All images including the latest are available at: [file://xsjeng1/group/xrlabs/gnatale/public/ubuntu-core-zybo/](file://xsjeng1/group/xrlabs/gnatale/public/ubuntu-core-zybo/)

```
LATEST CHANGELOG (for a full list, check full_img_changelog.txt):

02-03-2016 - <graham.schelle@xilinx.com>
             On poweron, networking and jupyter server start
                Use 'ifconfig' to see network address
                View /root/jupyter.log to see jupyter status
             Updated pyxi package to latest Pyxi github repository 

```


## Ubuntu Build Steps

02-03-2016

```
<from repository>

copy <Pyxi Repo Head>/ubuntu/* --> <Zybo Linux Root>/home/xpp 

```


```
<on target terminal>

sudo mv 0_network.sh 1_jupyter_config.sh 2_jupyter_server.sh /root/
sudo mv rc.local /etc/rc.local
sudo chmod +x /root/0_network.sh /root/1_jupyter_config.sh  /root/2_jupyter_server.sh /etc/rc.local

sudo cp ~xpp/.bash* /root
sudo cp -r ~xpp/.jupyter /root


```



## Ubuntu Scripts

1. *configure_jupyter.sh* : set up the ethernet connection and configure Jupyter to be launched with the DHCP given IP address. A message at the end will provide further instructions

2. *xilinx_proxy.sh* : set or unset the Xilinx internal network proxy

3. *py_package.sh*: run this script to know where to put your packages to be used by Jupyter. The script will create the specified path if it does not exists. To copy the package, you can use [WinSCP](https://winscp.net/eng/download.php) creating a *New Site* with protocol *SFTP*, Host name the ip of the board (that you can get typing `hostname -I` from terminal or executing the *configure_jupyter.sh* script), Port number *22* and User name *xpp*. The password is also *xpp*. If you leave the password entry empty, it will be asked at every log in.
You can obviously copy the package using your method of choice instead.
In this repository, the *pyxi* package is located under /python/pyxi

Remember to run
```
chmod +x <selected_scritp.sh>
```
to make it executable before you launch it.

## Installing `pyxi` easily using pip
An easy alternative to script #3 is to install the pyxi package using `pip` directly (and avoid all the hassle of manually copying files). To do that, simply type from a terminal while being in the home directory (/home/xpp).
```
sudo -H pip install -e 'git+https://github.com/Xilinx/Pyxi@master#egg=pyxi&subdirectory=python'
```

------------------------------------------------------------------------------------------------------