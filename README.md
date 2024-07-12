![Bugfish](https://img.shields.io/badge/Bugfish-Software-orange)
![Status](https://img.shields.io/badge/Status-Released-blue)
![License](https://img.shields.io/badge/License-GPLv3-black) 

# Proxmox-VMA2RAW Docker Container

This repository provides the necessary files and a ready-to-use Docker image to convert Proxmox VMA backup files to raw disk images. These raw images can then be accessed or mounted with Windows software.

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed on your machine.
- [DiskInternals Linux Reader](https://www.diskinternals.com/linux-reader/) for mounting raw disk images on Windows.

## Getting Started

### Deploy the Docker Container

1. Clone the repository:
    ```sh
    git clone https://github.com/bugfishtm/proxmox-vma2raw.git
    cd proxmox-vma2raw
    ```

2. Run the `create.bat` script to build and run the Docker container:
    ```sh
    ./create.bat
    ```

### Using the Docker Container

1. Place your `.vma` files in the `files` folder within the cloned repository.

2. Access the interactive shell of the running Docker container in bash mode:
    ```sh
    docker exec -it proxmox-vma2raw /bin/bash
    ```

3. Navigate to the `/opt/files` directory:
    ```sh
    cd /opt/files
    ```

4. Extract the `.vma` file to a raw disk image:
    ```sh
    vma extract ./sourcefile.vma ./extractdir
    ```
    - Ensure `./extractdir` does not exist before running the command.

5. The raw disk image will be available in the `./extractdir` directory.

### Mounting the Raw Disk Image on Windows

1. Transfer the raw disk image to your Windows machine.

2. Use [DiskInternals Linux Reader](https://www.diskinternals.com/linux-reader/) to mount and access the raw disk image.

## Video Tutorial

For a detailed walkthrough, check out the [YouTube video tutorial](https://www.youtube.com/watch?v=AGllcgOKZDE) explaining how to set up and use the Proxmox-VMA2RAW Docker container.

## Useful Links

- [Github Proxmox-VMA2RAW Docker Container](https://github.com/bugfishtm/proxmox-vma2raw)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [DiskInternals Linux Reader](https://www.diskinternals.com/linux-reader/)

## Contributing

Feel free to submit issues or pull requests to improve this project. All contributions are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.