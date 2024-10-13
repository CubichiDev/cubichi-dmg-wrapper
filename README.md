# Cubichi DMG Wrapper

Create a wrapped Gravit launcher from a .jar file.

## Requirements

- macOS
- Homebrew
- `sips` and `iconutil` (built-in on macOS)
- `create-dmg` form [this repo](https://github.com/create-dmg/create-dmg):
    
```bash
brew install create-dmg
```

## How to use

Launcher path: `Cubichi.app/Resources/launcher.jar`.

- `make all`: Generates the ICNS and creates the DMG. DMG file will appear in `release/` folder.

### Other commands
- `make generate_icns`: Generates the ICNS file.
- `make create_dmg`: Creates the DMG file.
- `make clean`: Removes generated files.

## License

MIT License.