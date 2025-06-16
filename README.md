# Proxmox-VMA2RAW

## 🔍 Overview

This repository provides the necessary files and a ready-to-use Docker image to convert Proxmox VMA backup files to raw disk images. These raw images can then be accessed or mounted with Windows software. This Docker image converts Proxmox VMA backup files to raw disk images. These raw images can then be accessed or mounted with Windows software.

> [!NOTE]
> No new features are planned for this project at this time.

> [!TIP]
> This project is actively maintained, with regular updates and prompt fixes for reported issues.

### Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed on your machine.
- [DiskInternals Linux Reader](https://www.diskinternals.com/linux-reader/) for mounting raw disk images on Windows.

### Pull the Docker Image  

1. Pull the Docker image from Docker Hub:  
    ```sh
    docker pull bugfishtm/proxmox-vma2raw:latest
    ```  
2. Run the Docker container and specify a folder to put your vma files in:  
    ```sh
    docker run -it -v C:\path\to\your\files:/opt/files bugfishtm/proxmox-vma2raw:latest
    ```  

### Usage

1. Place your `.vma` files in the `files` folder specified at the docker image deployment.

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

5. The raw disk image will be available in the `./extractdir` directory inside the directory you placed your .vma file in.

6. Use [DiskInternals Linux Reader](https://www.diskinternals.com/linux-reader/) to mount and access the raw disk image.  

### For Developers

If you want to rebuild or change the image, in case dockerhub is not available or you want to modify the files.

1. Clone the repository:
    ```sh
    git clone https://github.com/bugfishtm/proxmox-vma2raw.git
    cd proxmox-vma2raw
    ```

2. Run the `create.bat` script to build and run the Docker container:
    ```sh
    ./_docker/build.bat
    ```


### Useful Links

- [Github](https://github.com/bugfishtm/proxmox-vma2raw)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [DiskInternals Linux Reader](https://www.diskinternals.com/linux-reader/)
- [DockerHUB](https://hub.docker.com/r/bugfishtm/proxmox-vma2raw)


## 📖 Documentation

The following documentation is intended for both end-users and developers.


| **Description**                                                       | **Link**                                                                                         |
|----------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| A playlist or video related to this project. | [https://www.youtube.com/watch?v=AGllcgOKZDE](https://www.youtube.com/watch?v=AGllcgOKZDE)|
| If this repository contains a _videos folder, you can check that as well. | |
| Access the online documentation for this project. | [https://bugfishtm.github.io/proxmox-vma2raw/index.html](https://bugfishtm.github.io/proxmox-vma2raw/index.html)  |
| If you'd prefer to access the documentation locally, you can find it at. | [./docs/index.html](./docs/index.html) |

## ❓ Support Channels

If you encounter any issues or have questions while using this software, feel free to contact us:

- **GitHub Issues** is the main platform for reporting bugs, asking questions, or submitting feature requests: [https://github.com/bugfishtm/proxmox-vma2raw/issues](https://github.com/bugfishtm/proxmox-vma2raw/issues)
- **Discord Community** is available for live discussions, support, and connecting with other users: [Join us on Discord](https://discord.com/invite/xCj7AEMmye)  
- **Email support** is recommended only for urgent security-related issues: [security@bugfish.eu](mailto:security@bugfish.eu)

## 📢 Spread the Word

Help us grow by sharing this project with others! You can:  

* **Tweet about it** – Share your thoughts on [Twitter/X](https://twitter.com) and link us!  
* **Post on LinkedIn** – Let your professional network know about this project on [LinkedIn](https://www.linkedin.com).  
* **Share on Reddit** – Talk about it in relevant subreddits like [r/programming](https://www.reddit.com/r/programming/) or [r/opensource](https://www.reddit.com/r/opensource/).  
* **Tell Your Community** – Spread the word in Discord servers, Slack groups, and forums.  

## 📁 Repository Structure 

This table provides an overview of key files and folders related to the repository. Click on the links to access each file for more detailed information. If certain folders are missing from the repository, they are irrelevant to this project.

|Document Type|Description|
|----|-----|
| .github | Folder with github setup files. |
| [.github/CODE_OF_CONDUCT.md](./.github/CODE_OF_CONDUCT.md) | The community guidelines. |
| _changelogs | Folder for changelogs. |
| _docker | Folder to prepare docker images. |
| _videos | Folder with videos related to the project. |
| docs | Folder for the documentation. | 
| .gitattributes | Repository setting file. Only for development purposes. |
| .gitignore | Repository ignore file. Only for development purposes. |
| README.md | Readme of this project. You are currently looking at this file. |
| repository_reset.bat | File to reset this repository. Only for development purposes. |
| repository_update.bat | File to update this repository. Only for development purposes. |
| [CONTRIBUTING.md](CONTRIBUTING.md) | Information for contributors. | 
| [CHANGELOG.md](CHANGELOG.md) | Information about changelogs. | 
| [SECURITY.md](SECURITY.md) | How to handle security issues. |
| [LICENSE.md](LICENSE.md) | License of this project. |

## 📑 Changelog Information

Refer to the `_changelogs` folder for detailed insights into the changes made across different versions. The changelogs are available in **HTML format** within this folder, providing a structured record of updates, modifications, and improvements over time. Additionally, **GitHub Releases** follow the same structure and also include these changelogs for easy reference.

## 🌱 Contributing to the Project

I am excited that you're considering contributing to our project! Here are some guidelines to help you get started.

**How to Contribute**

1. Fork the repository to create your own copy.
2. Create a new branch for your work (e.g., `feature/my-feature`).
3. Make your changes and ensure they work as expected.
4. Run tests to confirm everything is functioning correctly.
5. Commit your changes with a clear, concise message.
6. Push your branch to your forked repository.
7. Submit a pull request with a detailed description of your changes.
8. Reference any related issues or discussions in your pull request.

**Coding Style**

- Keep your code clean and well-organized.
- Add comments to explain complex logic or functions.
- Use meaningful and consistent variable and function names.
- Break down code into smaller, reusable functions and components.
- Follow proper indentation and formatting practices.
- Avoid code duplication by reusing existing functions or modules.
- Ensure your code is easily readable and maintainable by others.

## 🤝 Community Guidelines

We’re on a mission to create groundbreaking solutions, pushing the boundaries of technology. By being here, you’re an integral part of that journey. 

**Positive Guidelines:**
- Be kind, empathetic, and respectful in all interactions.
- Engage thoughtfully, offering constructive, solution-oriented feedback.
- Foster an environment of collaboration, support, and mutual respect.

**Unacceptable Behavior:**
- Harassment, hate speech, or offensive language.
- Personal attacks, discrimination, or any form of bullying.
- Sharing private or sensitive information without explicit consent.

Let’s collaborate, inspire one another, and build something extraordinary together!

## 🛡️ Warranty and Security

I take security seriously and appreciate responsible disclosure. If you discover a vulnerability, please follow these steps:

- **Do not** report it via public GitHub issues or discussions. Instead, please contact the [security@bugfish.eu](mailto:security@bugfish.eu) email address directly.   
- Provide as much detail as possible, including a description of the issue, steps to reproduce it, and its potential impact.  

I aim to acknowledge reports within **2–4 weeks** and will update you on our progress once the issue is verified and addressed.

This software is provided as-is, without any guarantees of security, reliability, or fitness for any particular purpose. We do not take responsibility for any damage, data loss, security breaches, or other issues that may arise from using this software. By using this software, you agree that We are not liable for any direct, indirect, incidental, or consequential damages. Use it at your own risk.

## 📜 License Information

The license for this software can be found in the [LICENSE.md](LICENSE.md) file. Third-party licenses are located in the ./_licenses folder. The software may also include additional licensed software or libraries.

🐟 Bugfish 
