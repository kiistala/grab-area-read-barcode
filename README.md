# grab-area-read-barcode

Tool for Linux desktop – select area, read the barcode in it into clipboard

## Dependencies

```
sudo apt-get -y install scrot
sudo apt-get -y install zbar-tools
sudo apt-get -y install xclip
```

## Usage

I start the script using a hotkey.
If you want to test it, this should work:

```
sleep 5; ./grab-area-read-barcode.sh
```

After executing command above, switch to a view where barcode can be selected.
Cursor icon should indicate when 5 seconds has passed and scrot is waiting for selection.
