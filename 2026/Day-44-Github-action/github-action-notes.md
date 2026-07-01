# Day 44 - GitHub Actions: Secrets, Artifacts, Tests & Cache

## 1. GitHub Secrets

### What are Secrets?

GitHub Secrets are used to store sensitive information securely.

Examples:

* Docker Hub Token
* API Keys
* Passwords
* Access Tokens

### Why use Secrets?

* Keeps sensitive data safe.
* Avoids hardcoding passwords or tokens.
* GitHub automatically masks secret values in logs.

### Important

Never print secret values in CI logs because anyone with access to the logs may see sensitive information.

---

## 2. Environment Variables

Secrets can be passed as environment variables.

Example:

```yaml
env:
  MESSAGE: ${{ secrets.MY_SECRET_MESSAGE }}
```

Then use it in shell:

```bash
echo $MESSAGE
```

### Difference

`${{ secrets.MY_SECRET_MESSAGE }}`

* GitHub Actions expression.
* GitHub reads the secret before the job starts.

`$MESSAGE`

* Linux environment variable.
* Used by the shell while running commands.

---

## 3. Artifacts

### What is an Artifact?

An Artifact is a file generated during a workflow that is saved after the workflow finishes.

Examples:

* Test Reports
* Build Files
* Logs
* ZIP Files

### Upload Artifact

```yaml
uses: actions/upload-artifact@v4
```

### Download Artifact

```yaml
uses: actions/download-artifact@v4
```

### Why use Artifacts?

* Share files between jobs.
* Download reports after workflow completion.
* Save build outputs.

---

## 4. Multiple Jobs

Use `needs:` when one job depends on another.

Example:

```yaml
needs: build
```

Meaning:
The next job starts only after the previous job completes successfully.

---

## 5. Checkout Action

```yaml
uses: actions/checkout@v4
```

Purpose:
Downloads the repository code into the GitHub Runner.

Without checkout:

* Repository files are not available.
* Scripts and source code cannot be accessed.

---

## 6. Running Tests in CI

Run test scripts inside GitHub Actions.

Example:

```bash
./scripts/test.sh
```

### Exit Codes

```bash
exit 0
```

Means:

* Success
* Pipeline passes (Green)

```bash
exit 1
```

Means:

* Failure
* Pipeline fails (Red)

GitHub Actions decides workflow status using the command's exit code.

---

## 7. chmod +x

```bash
chmod +x scripts/test.sh
```

Purpose:
Makes the script executable.

Without execute permission, the script cannot run directly.

---

## 8. Cache

### What is Cache?

Cache stores downloaded dependencies so they do not need to be downloaded again in future workflow runs.

Example:

* npm packages
* pip packages
* Maven dependencies
* apt packages

### Cache Action

```yaml
uses: actions/cache@v4
```

### Important Fields

`path`

* Folder to cache.

`key`

* Unique name used to identify the cache.

### Benefits

* Faster workflows.
* Less downloading.
* Saves CI execution time.

---

## Artifact vs Cache

| Artifact                               | Cache                              |
| -------------------------------------- | ---------------------------------- |
| Stores reports, logs and build outputs | Stores downloaded dependencies     |
| Used by developers                     | Used by the CI pipeline            |
| Can be downloaded                      | Restored automatically             |
| Used for sharing files                 | Used for faster workflow execution |

---

## Commands Learned

```bash
chmod +x scripts/test.sh
```

```bash
./scripts/test.sh
```

```bash
cat report.txt
```

```bash
mkdir reports
```

---

## GitHub Actions Used

* actions/checkout@v4
* actions/upload-artifact@v4
* actions/download-artifact@v4
* actions/cache@v4

---

## Key Points

* Store passwords and tokens in GitHub Secrets.
* Never print secret values in logs.
* Use environment variables to access secrets.
* Artifacts save workflow files.
* Artifacts can be shared between jobs.
* Checkout downloads repository code.
* `needs:` creates job dependencies.
* `exit 0` means success.
* `exit 1` means failure.
* Cache makes workflows faster by reusing downloaded dependencies.

