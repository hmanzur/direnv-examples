# ⚙️ direnv Examples

![direnv - flexible environment management](https://miro.medium.com/v2/resize:fit:1200/1*xoSPgT9DNlbNBjV_5NNyMg.png)

> Practical examples of using [`direnv`](https://direnv.net) to automatically configure project-specific development environments.

## 🧠 What is direnv?

`direnv` is a shell extension that automatically loads and unloads environment variables when you enter or leave a directory. It’s perfect for managing things like:

- Language versions (e.g. Node.js, Python)
- Virtual environments
- Secret environment variables
- Project-specific setup

## 📦 What's inside

This repository includes examples of using `direnv` with popular development setups:

| Language  | Tool              | Folder                                    |
|-----------|-------------------|-------------------------------------------|
| Python    | virtualenv/pipenv | [`Python`](./python-virtualenv/README.md) |
| Terraform | dotenv            | [`Terraform`](./python-pipenv/README.md)  |
| Node.js   | nvm               | [`Node`](./node-nvm/README.md)            |

Each folder contains:

- A working `.envrc` file

- A `README.md` explaining how it works and how to use it

- A bunch of examples

## 🧩 Setup in your project

1. 🛠️ Step 1 – Install direnv

    direnv is packaged in most distributions already. See the [installation documentation](https://direnv.net/docs/installation.html) for details.

    - Brew macOS

        ```bash
        brew install direnv
        ```

    - Debian/Ubuntu

        ```bash
        sudo apt install direnv
        ```

    - Debian/Ubuntu

        ```bash
        sudo apt install direnv
        ```

2. 🧠 Step 2 – Hook direnv into your shell

    ```bash
    echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc # or bash/fish
    ```

3. 🔐 Step 3 – Trust the project directory

    >💡 **Note:** Run `direnv allow` only the first time you enter the project folder, or whenever you make changes to the `.envrc` file.

    Navigate to your project folder

    ```bash
    direnv allow
    ```

4. 🔁 Step 4 – Automatic loading!

    ✅ Output on success

    ```bash
    direnv: loading ~/my-project/.envrc
    direnv: export +VIRTUAL_ENV ~PATH
    ```

    ❌ Output on error

    ```error
    direnv: error ~/my-project/.envrc is blocked. Run `direnv allow` to approve its content
    ```

## 📄 License

[MIT](LICENSE)
