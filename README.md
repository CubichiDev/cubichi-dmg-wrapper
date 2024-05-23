# Cubichi DMG Wrapper

Create a wrapped Gravit launcher from a .jar file.

## Requirements

- macOS
- Homebrew
- `sips` and `iconutil` (built-in on macOS)
- `create-dmg` (install with Homebrew):
    
```bash
brew install create-dmg
```

## How to use

- `make all`: Generates the ICNS and creates the DMG. DMG file will appear in `release/` folder.

### Other commands
- `make generate_icns`: Generates the ICNS file.
- `make create_dmg`: Creates the DMG file.
- `make clean`: Removes generated files.

## License

MIT License.