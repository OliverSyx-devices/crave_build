# crave_build

```bash
pd sh ubuntu -- crave -n devspace
```

```bash
crave run --no-patch -- "curl https://raw.githubusercontent.com/OliverSyx/crave_build/refs/heads/superior/build.sh | bash"
```

Install crave 

```bash
pkg install proot-distro
```

```bash
pkg install git
git clone https://github.com/termux/proot-distro
cd proot-distro
```

```bash
pd install ubuntu
```

```bash
pd sh ubuntu
```

```bash
apt update; apt install ssh rsync wget -y
```

```bash
curl -s https://raw.githubusercontent.com/accupara/crave/refs/heads/master/get_crave.sh | bash -s --
```

```bash
chmod +x crave; mv crave /usr/local/bin/
```

Create a new one, name it whatever you like to easily identify it and click on Create API Key Button.
Copy it
Create a new file in your current shell called crave.conf
Paste the API Key here

```bash
pd sh ubuntu -- crave -n devspace
```

```bash
crave list
```

```bash
crave clone create --projectID 36 /crave-devspaces/los20
```

remove project

```bash
crave clone destroy /crave-devspaces/los20
```

```bash
cd ros 

crave pull out/target/product/*/rom
```
