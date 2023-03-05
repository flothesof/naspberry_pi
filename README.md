# naspberry_pi
A repository for my Raspberry Pi NAS project.

The NAS works using `samba` and can thus be accessed from Windows or Macs (using `autofs`, see below).

## Using autofs on Mac to mount the sambafs

Source : https://gist.github.com/rudelm/7bcc905ab748ab9879ea

I created a folder for setting up the NAS share like so: `mkdir ~/shares` and then set up autofs to mount the NAS there.

Content of /etc/auto_master

```
# Automounter master map
#
+auto_master		# Use directory service
/net			-hosts		-nobrowse,hidefromfinder,nosuid
/home			auto_home	-nobrowse,hidefromfinder
/Network/Servers	-fstab
/-			-static
/- auto_smb             -nosuid,noowners
```

Content of /etc/auto_smb

```
/System/Volumes/Data/Users/kappamaki/shares -fstype=smbfs,soft,noowners,nosuid,rw ://username:password@ip_adress:/path_to_share
```


## Scripts
The repo contains various rsync scripts used in the NAS setup.

- `backup_mbp.sh`: the rsync used to backup my Macbook Pro

