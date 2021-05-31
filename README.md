# Create DVD-ISO from youtube-url and burning it

## Downloading

```bash
git clone https://github.com/JensUngerer/create-dvd-iso-from-mpg.git ~/create-dvd-iso-from-mpg
```

## Add two lines to .bashrc
```bash
PATH="~/create-dvd-iso-from-mpg:${PATH}"
export PATH
```

## Usage
```bash
downloadConvertAndBurn.sh https://www.youtube.com/watch?v=9uDgJ9_H0gg baseNameForIsoFile
```



