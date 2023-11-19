# Batch Image Watermark Script

This script automates the process of adding watermarks to a batch of images using ImageMagick.

## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/WireBot34/scripts.git
   cd scripts/batch-image
   ```

2. **Run the Script:**
   ```bash
   ./batch-watermark.sh
   ```

3. **Follow the Prompts:**
   - Enter the path to the input folder when prompted.
   - The script will create a new folder with "_marked" appended to the input folder name.
   - Images in the input folder will be watermarked and saved in the output folder.

## Dependencies

- [ImageMagick](https://imagemagick.org/): Make sure it is installed on your system.
    ### Debian/Ubuntu-based (apt):

```bash
sudo apt-get update
sudo apt-get install imagemagick
```

### Red Hat/Fedora-based (dnf or yum):

```bash
sudo dnf install imagemagick   # For Fedora
# or
sudo yum install imagemagick   # For older versions of Fedora and RHEL
```

### Arch-based (pacman):

```bash
sudo pacman -S imagemagick
```

### SUSE-based (zypper):

```bash
sudo zypper install imagemagick
```

### Generic (using source):

If your distribution doesn't use any of the above package managers or you prefer to build from source, you can download and compile ImageMagick:

1. Visit the [ImageMagick download page](https://imagemagick.org/script/download.php) to get the latest source code.
2. Extract the downloaded archive.
3. Navigate to the extracted directory in the terminal.
4. Run the following commands:

```bash
./configure
make
sudo make install
```

Please note that the commands provided are general, and depending on your system, you might need additional privileges (using `sudo`), and some dependencies might have different package names. Always check your system's documentation for specific details.

Choose the set of commands that corresponds to your distribution and package manager. If you encounter any issues or need further assistance, feel free to ask!
## Customization

- Adjust the watermark properties in the script (font size, positioning, etc.) based on your preferences.

## Contributing

If you have suggestions or improvements, feel free to [open an issue](https://github.com/WireBot34/scripts/issues) or submit a pull request.

## License

This script is licensed under the [MIT License](LICENSE).
