
# List Repository Collaborators

This script retrieves and displays a list of users who have read access permissions to a specified GitHub repository. It utilizes the GitHub API and `jq` for data processing. 

## Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/kumarbhosale/repo-access-viewer-script.git
    ```

2.  **Make the script executable:**

    ```bash
    chmod +x script/list_read_access.sh
    ```

## Usage

To execute the script, run the following command in your terminal, replacing `<repository_owner>` and `<repository_name>` with the actual values:

```bash
./script/list_read_access.sh <repository_owner> <repository_name>


Example:
./script/list_read_access.sh johndoe my-project



Notes

Credentials: Before running the script, ensure you have replaced your_github_username and your_personal_access_token with your actual GitHub credentials in the script file.

Security: Never commit your personal access token directly to your repository. Store it securely and only expose it when necessary.
